#!/usr/bin/perl

# mp32ogg
# Author: Nathan Walp <faceprint@faceprint.com>
# This software released under the terms of the Artistic License
# <http://www.opensource.org/licenses/artistic-license.html>

# ChangeLog
#
# 0.11
#     * Have output reflect change in license (doh)
#     * Check ogg after conversion using ogginfo, see if the file was truncated
#       (which would indicate failure)
#     * Fixed comment tagging "COMMENT=" gets prepended now
#     * Moved from bitrate setting to quality setting, and removed the bitrate 
#       option
#     * Allow for the WinAMP genres
#
# 0.10
#     * Now properly escapes the commands so files with special characters are
#       handled correctly.
# 0.9
#     * Big changes.  For starters, a new license.  mp32ogg is now released
#       under the terms of the Artistic License.  If you're happy about the
#       change, feel free to praise me.  If you're pissed, /dev/null is a good
#       place to send the flames.
#     * Next is the addition of the extra tag requested by the OGG guys
#       themselves.  transcoded=mp3;<bitrate> will be a new tag on all converted
#       files.  Hopefully this will allow for conversion, while not hurting the
#       quality reputation of the OGG format.
#     * Finally, genre and year are now grabbed from the mp3 id3 tag, and 
#       added to the ogg.
# 0.8.1
#     How do I always manage to get hit with the stupidest of typo-bugs?
#     Anything encoded with 0.8 is gonna have an incorrect artist.   Sorry :-/
#     Oh, and thanks to Horst Henkler <h.henkler@gmx.de> for being the first
#     to speak up about it.  
# 0.8
#     * change -q to --quiet, since oggenc 1.0RC2 decided to break backwords
#       compatibility.  Changed the new raw options as well.  Basically, it 
#       now works with the newer oggenc, as well as the old version.
# 0.7.1
#     * I HATE it when I forget to increment the version number ;-)
# 0.7
#     * John Flinchbaugh <glynis@hjsoft.com> sent me a handy patch to detect and
#       use the frequency of the mp3 files, as well as to detect stereo vs. mono
#       and encode the ogg appropriately.
# 0.6.1
#     * there's a reason you don't play with code without sleep and after an 
#       exam. Thomas Riemer <thomas.riemer@studserv.uni-stuttgart.de> was nice 
#       enough to send me a patch fixing a bug introduced with --verbose.  If 
#       you didn't specify --verbose in 0.6.0, no tag info got saved.  Thanks 
#       Thomas.
# 0.6.0 
#     thanks to David Mohr <squisher@web.de> for the patch adding:
#     * extract the bitrate from the mp3 and use it to encode the ogg file
#     * added the verbose option so that the user can decide whether he
#       wants output or not
# 0.5.1
#     * fixed another minor --rename bug, it now strips .ogg off of the rename
#     	file like it's supposed to
#     * fixed relative directory bug
# 0.5
#     * fixed --rename to leave filenames the same when there's not enough ID3
#     	info to base a new name on.
#     * changed errors from print to warn, so they get written to stderr
#     * added creation of directories for --rename when necessary
# 0.4
#     * conversion of special characters to _ in --rename filenames
#     * added --no-replace to stop that
#     * added --lowercase to make all characters in --rename filnames lowercase
# 0.3
#     * Massive code cleanup
#     * Support to recurse directories
#     * --delete option added
#     * --rename option added
# 0.2
#     * Made mpg123 and oggenc quiet, and added writing of ID3 Tags to output
# 0.1
#     First Release

$version = "v0.11";

use MP3::Info;
use File::Find ();
use File::Basename;
use Getopt::Long;
use String::ShellQuote;
use Encode;
use POSIX qw/setlocale LC_CTYPE/;
use I18N::Langinfo qw/langinfo CODESET/;

setlocale(LC_CTYPE, '');

use_winamp_genres();

$oggenc  = "/usr/bin/oggenc";
$ogginfo = "/usr/bin/ogginfo";
$mpg123  = "/usr/bin/mpg321";

print "mp32ogg $version\n";
print "(c) 2000-2002 Nathan Walp\n";
print "Released without warranty under the terms of the Artistic License\n\n";

my $userquality=-2.0;

GetOptions("help|?",\&showhelp,
		"quality=f" => \$userquality,
		"delete", 
		"rename=s", 
		"lowercase",
		"no-replace",
		"verbose",
		"<>", \&checkfile);

sub showhelp() {
	print "Usage: $0 [options] dir1 dir2 file1 file2 ...\n\n";
	print "Options:\n";
	print "--quality=[-1..10]       Set Ogg/Vorbis quality level\n";
	print "                         Defaults to bitrate of original .mp3\n"; 
	print "--delete                 Delete files after converting\n";
	print "--rename=format          Instead of simply replacing the .mp3 with\n";
	print "                         .ogg for the output file, produce output \n";
	print "                         filenames in this format, replacing %a, %t\n";
	print "                         and %l with artist, title, and album name\n";
	print "                         for the track\n";
	print "--lowercase              Force lowercase filenames when using --rename\n";
	print "--verbose                Verbose output\n";
	print "--help                   Display this help message\n";
	exit;

}

	


sub checkfile() {
	my $file = shift(@_);
	if(-d $file) {
		File::Find::find(\&findfunc, $file);
	}
	elsif (-f $file) {
		&ConvertFile($file);
	}
}

sub findfunc() {
	$file = $_;
	($name,$dir,$ext) = fileparse($file,'\.mp\d');
	if((/\.mp\d/,$ext) && -f $file) {
		&checkfile($file);
	}
}

sub ConvertFile() {
	my $mp3file = shift(@_);
	my $delete = $opt_delete;
	my $filename = $opt_rename;
	my $lowercase = $opt_lowercase;
	my $noreplace = $opt_no_replace;
	my $verbose = $opt_verbose;

	$info = get_mp3tag($mp3file);
	$fileinfo = get_mp3info($mp3file);

        # get_mp3info returns magical Perl UTF-8 strings, but this script
        # really wants to deal with plain old sequences-of-octets, so encode
        # those strings.
        for $key (keys %$info) {
            $info->{$key} = encode(langinfo(CODESET), $info->{$key});
        }

	$_ = $filename;

	my $channels = 2;	# default to stereo
	if ($fileinfo->{MODE} == 3) {
		$channels = 1;	# set to mono if single channel mode
	}
		
	my $frequency = ($fileinfo->{FREQUENCY}*1000);
	if ($frequency == 0) {
		$frequency = 44100;		# default to 44100
	}
	
	$mp3bitrate = $fileinfo->{BITRATE};
	if (($userquality < -1) || ($userquality > 10)) {
	    # Set quality adjacent to mp3 bitrate
	    if($mp3bitrate ne "") {
		if($mp3bitrate > 256) {
	    	    $quality = 8;
		} elsif($mp3bitrate > 192) {
	    	    $quality = 7;
		} elsif($mp3bitrate > 128) {
	    	    $quality = 6;
		} else {
	    	    $quality = 5;
		}
	    } else {
		$quality = 5;
		print "MP3::Info didn't report the bitrate... weird. Corrupt MP3 file? Bug?\n";
	    }
	} else {
	    # User defined quality
	    $quality = $userquality;
	}
	if($filename eq "" ||
		((/\%a/) && $info->{ARTIST} eq "") ||
		((/\%t/) && $info->{TITLE} eq "") ||
		((/\%l/) && $info->{ALBUM} eq "") ){

		if($filename ne "") {
			warn "not enough ID3 info to rename, reverting to old filename.\n";
		}

		($filename,$dirname,$ext) = fileparse($mp3file,'\.mp\d');
	}
	else {
		$filename =~ s/\%a/$info->{ARTIST}/g;
		$filename =~ s/\%t/$info->{TITLE}/g;
		$filename =~ s/\%l/$info->{ALBUM}/g;
		if($lowercase) {
			$filename = lc($filename);
		}
		if(!$noreplace) {
			$filename =~ s/[\[\]\(\)\{\}!\@#\$\%^&\*\~ ]/_/g;
			$filename =~ s/[\'\"]//g;
		}
		($name, $dir, $ext) = fileparse($filename, '.ogg');
		$filename = "$dir$name";
		$dirname = dirname($mp3file);

	}

	$oggoutputfile = "$filename.ogg";
	$newdir = dirname($oggoutputfile);

	# until i find a way to make perl's mkdir work like mkdir -p...
	system("mkdir -p $newdir");


	$infostring = "";
	
	print "Converting $mp3file to OGG...\n";
	if ($verbose) {
		print "Length: $fileinfo->{TIME}\t\tFreq: $fileinfo->{FREQUENCY} kHz\n";
		print "MP3 Bitrate: $mp3bitrate\tOGG Quality Level: $quality\n";

		print " Artist: $info->{ARTIST}\n";
		print "  Album: $info->{ALBUM}\n";
	        print "  Title: $info->{TITLE}\n";
	        print "   Year: $info->{YEAR}\n";
	        print "  Genre: $info->{GENRE}\n";
		print "Track #: $info->{TRACKNUM}\n";
		print "Comment: $info->{COMMENT}\n";
	}

	if($info->{ARTIST} ne "") {
		$infostring .= " --artist " . shell_quote($info->{ARTIST});
	}
	if($info->{ALBUM} ne "") {
		$infostring .= " --album " . shell_quote($info->{ALBUM});
	}
	if($info->{TITLE} ne "") {
		$infostring .= " --title " . shell_quote($info->{TITLE});
	}
	if($info->{TRACKNUM} ne "") {
		$infostring .= " --tracknum " . shell_quote($info->{TRACKNUM});
	}
	if($info->{YEAR} ne "") {
	   	$infostring .= " --date " . shell_quote($info->{YEAR});
	}
	if($info->{GENRE} ne "") {
	   	$infostring .= " --comment " . shell_quote("genre=$info->{GENRE}");
	}
	if($info->{COMMENT} ne "") {
		$infostring .= " --comment " . shell_quote("COMMENT=$info->{COMMENT}");
	}
	
	$infostring .= " --comment " . shell_quote("transcoded=mp3;$fileinfo->{BITRATE}");
		
	
	$oggoutputfile_escaped = shell_quote($oggoutputfile);
	$mp3file_escaped = shell_quote($mp3file);
	$result = system("$mpg123 -q -s $mp3file_escaped 2>/dev/null | $oggenc -q $quality --quiet --raw --raw-rate=$frequency --raw-chan=$channels -o $oggoutputfile_escaped $infostring -");

	if(!$result) {
	   open(CHECK,"$ogginfo $oggoutputfile_escaped |");
	   while(<CHECK>)
	   {
	      if($_ eq "file_truncated=true\n")
	      {
		 warn "Conversion failed ($oggoutputfile truncated).\n";
		 close CHECK;
		 exit 1;
	      }
	      elsif($_ eq "header_integrity=fail\n")
	      {
		 warn "Conversion failed ($oggoutputfile header integrity check failed).\n";
		 close CHECK;
		 exit 1;
	      }
	      elsif($_ eq "stream_integrity=fail\n")
	      {
		 warn "Conversion failed ($oggoutputfile header integrity check failed).\n";
		 close CHECK;
		 exit 1;
	      }
	   }
	   close CHECK;
	   print "$oggoutputfile done!\n";
	   if($delete) {
	      unlink($mp3file);
	   }
	}
	else {
	   warn "Conversion failed ($oggenc returned $result).\n";
	   exit 1;
	}
}
