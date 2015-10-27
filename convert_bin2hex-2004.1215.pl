#!/usr/bin/perl
#
# $Id: bin2hex.pl,v 1.3 2004/04/10 17:32:44 jaalto Exp $
# Perl -- FILE, Convert binary file to hex dump
#
#  File id
#
#       .Copyright (C)  Jari Aalto
#       .Keywords:      Perl file conversion bin hex
#
#       This program is free software; you can redistribute it and/or
#       modify it under the terms of the GNU General Public License as
#       published by the Free Software Foundation; either version 2 of
#       the License, or (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful, but
#       WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#       General Public License for more details.
#
#       You should have received a copy of the GNU General Public License along
#       with this program; if not, write to the Free Software Foundation,
#       Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#
#   About program layout
#
#       Code written with Unix Emacs and indentation controlled with
#       Emacs package tinytab.el, a generic tab minor mode for programming.
#
#       The {{ }}} marks you see in this file are party of file "fold"
#       control package called folding.el (Unix Emacs lisp package).
#       ftp://ftp.csd.uu.se/pub/users/andersl/beta/ to get the latest.
#
#   Change Log (none)

# {{{ Initial setup

use 5.004;
use strict;

#       A U T O L O A D
#
#       The => operator quotes only words, and File::Basename is not
#       Perl "word"

use autouse 'Pod::Text' => qw( pod2text );

#   Standard perl modules

use English;
use Getopt::Long;

GLOBALS:
{
    use vars qw ( $VERSION );

    #   This is for use of Makefile.PL and ExtUtils::MakeMaker
    #   So that it puts the tardist number in format YYYY.MMDD
    #   The REAL version number is defined later

    #   The following variable is updated by Emacs setup whenever
    #   this file is saved

    $VERSION = '2004.1215';
}

# ****************************************************************************
#
#   DESCRIPTION
#
#       Set global variables for the program
#
#   INPUT PARAMETERS
#
#       none
#
#   RETURN VALUES
#
#       none
#
# ****************************************************************************

sub Initialize ()
{
    use vars qw
    (
        $CONTACT
        $FILE_ID
        $LIB
        $PROGNAME
        $URL
        $VERSION
    );

    $PROGNAME = "bin2hex.pl";   # Hard-coded. Not looked from $0
    $LIB      = $PROGNAME;      # library where each function belongs: PRGNAME

    $FILE_ID  = q$Id: bin2hex.pl,v 1.3 2004/04/10 17:32:44 jaalto Exp $;
    $VERSION  = (split ' ', $FILE_ID)[2];    # version number in format N.NN+
    $CONTACT  = "";
    $URL      = "http://cpan.perl.org/modules/by-authors/id/J/JA/JARIAALTO/";

    $OUTPUT_AUTOFLUSH = 1;
}

# }}}
# {{{ usage/help

# ***************************************************************** &help ****
#
#   DESCRIPTION
#
#       Print help and exit.
#
#   INPUT PARAMETERS
#
#       $msg    [optional] Reason why function was called.
#
#   RETURN VALUES
#
#       none
#
# ****************************************************************************

=pod

=head1 NAME

    bin2hex.pl -  Print file in standard hex format

=head1 SYNOPSIS

    bin2hex.pl file
    bin2hex.pl --width 16 file
    bin2hex.pl --base-hex file

=head1 OPTIONS

=head2 General options

=over 4

=item B<-o|--offset N>

Start counting offset from number N instead of zero.

=item B<-w|--width N>

Use width N, default is 10. Must be divideable by 2.

=item B<-b|--base-hex>

The offset counter to the left runs normally in base 10. If you
rather want to see hex based offsets, select this option.

   00000: 23 21 2f 75 73  72 2f 62 69 6e    #!/us r/bin
   |
   Offset counter

=item B<-e|--extension EXT>

Output to FILE + EXT.

=item B<-E|--Eval PERL-CODE>

Evaluate PERL-CODE to find out the filename. The input filename is
in $ARG which you can modify with standard perl commands.

=item B<-L|--Lowercase>

Print all Hex numbers in lowercase.

=item B<--low-nybble>

Use "h20" (pack) format where low nybble comes first. Default is "H20".

=item B<-r|--raw>

Dump raw hex data only, without any address or filename tags

    66 00 a9 0d 56  00 01 00 ff 35
    ff ff ff 20 02  05 00 06 06 06
    ...

=item B<-U|--Uppercase>

Print all Hex numbers in uppercase.

=back

=head2 Miscellaneous options

=over 4

=item B<-d|--debug LEVEL>

Turn on debug with positive LEVEL number. Zero means no debug.

=item B<-h|--help>

Print help page.

=item B<-v|--verbose>

Turn on verbose messages.

=item B<-V|--Version>

Print program version and contact info.

=bac

=head1 README

Print file in hex format:

    00000: 66 00 a9 0d 56  00 01 00 ff 35   f...V ....5
    00010: ff ff ff 20 02  05 00 06 06 06   ..... .....
    00020: 00 12 11 09 61  13 ff ff ff ff   ....a .....
    00030: 48 00 01 00 00  00 11 11 09 61   H.... ....a

=head1 EXAMPLES

If you want to compare two binary files, the easiest is that you
first dump then in raw format and then use diff(1)

    bin2hex.pl --Uppercase --width 16 --raw file1.bin > file1.hex
    bin2hex.pl --Uppercase --width 16 --raw file2.bin > file2.hex

    diff -ubw file1.hex file2.hex

=head1 ENVIRONMENT

No environment variables used.

=head1 SEE ALSO

od(1)

=head1 AVAILABILITY

CPAN entry is http://cpan.perl.org/modules/by-authors/id/J/JA/JARIAALTO/

=head1 SCRIPT CATEGORIES

CPAN/Administrative

=head1 PREREQUISITES

No CPAN modules required.

=head1 COREQUISITES

No optional CPAN modules needed.

=head1 OSNAMES

C<any>

=head1 VERSION

$Id: bin2hex.pl,v 1.3 2004/04/10 17:32:44 jaalto Exp $

=head1 AUTHOR

Copyright (C) Jari Aalto
This is free software; you can redistribute it and/or modify it under the same
terms as Perl itself or in terms of Gnu General Public licence v2 or later.

=cut

sub Help (;$)
{
    my $id  = "$LIB.Help";
    my $msg = shift;  # optional arg, why are we here...

    pod2text $PROGRAM_NAME;

    $msg and print "$id: >> $msg\n";

    exit 1;
}

# }}}
# {{{ Args parsing

# ************************************************************** &args *******
#
#   DESCRIPTION
#
#       Read and interpret command line arguments
#
#   INPUT PARAMETERS
#
#       none
#
#   RETURN VALUES
#
#       none
#
# ****************************************************************************

sub HandleCommandLineArgs ()
{

    my $id = "$LIB.HandleCommandLineArgs";

    my ( $version, $help);

    # .......................................... command line options ...

    use vars qw
    (
        $EVAL_CODE
        $EXTENSION
        $EXTENSION
        $LOWERCASE
        $LOW_NYBBLE
        $OFFSET_HEX
        $OFFSET_START
        $PACK_CHAR
        $RAW
        $UPPERCASE
        $USE_EXTENSION
        $USE_EXTENSION_DROP
        $WIDTH
        $WIDTH

        $debug
        $verb
    );

    $WIDTH      = 10;
    $EXTENSION  = ".hex";
    $PACK_CHAR  = "H";

    # .................................................... read args ...

    Getopt::Long::config( qw
    (
        ignore_case
        require_order
    ));

    GetOptions      # Getopt::Long
    (
          "h|help"      => \$help
        , "Eval=s"      => \$EVAL_CODE
        , "Lowercase"   => \$LOWERCASE
        , "Uppercase"   => \$UPPERCASE
        , "Version"     => \$version
        , "base-hex"    => \$OFFSET_HEX
        , "debug"       => \$debug
        , "extension=s" => \$EXTENSION
        , "low-nybble"  => \$LOW_NYBBLE
        , "offset=i"    => \$OFFSET_START
        , "raw"         => \$RAW
        , "verbose"     => \$verb
        , "width=i"     => \$WIDTH
    );

    $version        and die "$VERSION $PROGNAME $CONTACT $URL\n";
    $help           and Help();
    $verb = 1       if  $debug;

    $LOW_NYBBLE     and $PACK_CHAR = "h";

}

# }}}
# {{{ Main

sub Main ()
{
    Initialize();
    HandleCommandLineArgs();

    my $id = "$LIB.main";

    not @ARGV   and  die "$id: No files";
    $debug      and  print "$id: files, @ARGV\n";

    my $packFormat  = $PACK_CHAR . 2 * $WIDTH;
    my $hexFmt      = $LOWERCASE ? "x" : "X";

    local ( *OUT);

    for my $file ( @ARGV )
    {
        my $writeTo = "";

        # ........................................... select destination ...

        my $OUT = \*STDOUT;

        if ( $EVAL_CODE )
        {
            local $ARG = $file;
            eval  $EVAL_CODE;

            $EVAL_ERROR     and die   "$id: [$EVAL_CODE]  $EVAL_ERROR";
            $debug          and print "$id: [$EVAL_CODE]  $file --> $ARG\n";

            $writeTo = $ARG;

            open OUT, "> $writeTo"   or die "$id: $writeTo $ERRNO";
            binmode OUT;

            $OUT = *OUT;
        }
        elsif ( $USE_EXTENSION )
        {
            $writeTo = "$file$EXTENSION";                   # Default

            open OUT, "> $writeTo"   or die "$id: $writeTo $ERRNO";
            binmode OUT;

            $OUT = *OUT;
        }

        # ......................................................... open ...

        not $RAW            and print "file: $file\n";

        my $stat = open my $IN, "$file";
        ! $stat and die "$id: Cannot open file $file status=$stat $ERRNO";

        binmode $IN;

        # ......................................................... read ...

        my $count = $OFFSET_START;
        my $buf;

        while ( read $IN, $buf, $WIDTH )
        {
            my ($str, $desc);

            #   Note: using "H" or "h" is important, see od(1),
            #   which is the right byte order.

            my $pack = unpack $packFormat, $buf;

            for ( my $i = 0; $i < $WIDTH; $i++ )
            {
                my $val  = substr $pack, $i*2,2;
                $val     = uc $val  if  $UPPERCASE;

                $str .= "$val ";

                my $dec = hex $val;
                my $ch  = ".";

                if ( !$RAW  and  $dec > 32  and  $dec < 128 )
                {
                    $ch = pack 'C', $dec;           #   only valid characters
                }

                $desc .= $ch;

                if ( $i == $WIDTH/2 - 1 )            # additional break
                {
                    $str  .= " ";
                    $desc .= " ";
                }
            }

            # ....................................... write hex contents ...

            my $strOut;

            if ( $OFFSET_HEX )
            {
                $strOut = sprintf "%05" . $hexFmt . ": %s   %s\n"
                                , $count
                                , $str
                                , $desc;
            }
            else
            {
                $strOut = sprintf "%05d: %s   %s\n"
                                , $count
                                , $str
                                , $desc;
            }

            print "$str\n"      if     $RAW;
            print $OUT $strOut  if not $RAW;

            $count += $WIDTH;
        }

        print "\n";
        close $IN;

        if ( $USE_EXTENSION )
        {
            close OUT;
            print "out:  $writeTo\n";
        }
    }
}

# }}}

Main();
0;
__END__
