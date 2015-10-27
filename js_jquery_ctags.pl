#!/usr/bin/env perl
###############################################################################
#2010_09_07_10:59:00 add by greshem
#来自于WINDOWS的 gvim 的tools 对perl 建立tags 索引, 个人把注释全部去掉了, 原名叫
#pltags
#2010_09_13_10:57:06 add by greshem
#修改成 处理 javascript 的工具, 使代码浏览的时候方便一点。 
###############################################################################


use strict;

use Getopt::Long;

my $do_subs = 1;    # --subs, --nosubs    include subs in tags file?
my $do_vars = 1;    # --vars, --novars    include variables in tags file?
my $do_pkgs = 1;    # --pkgs, --nopkgs    include packages in tags file?
my $do_exts = 1;    # --extensions, --noextensions
		    #			  include Exuberant Ctags extensions

my $VERSION = "2.21";	# pltags version
my $status = 0;		# GetOptions return value
my $file = "";		# File being processed
my @tags = ();		# List of produced tags
my $is_pkg = 0;		# Are we tagging a package?
my $has_subs = 0;	# Has this file any subs yet?
my $package_name = "";	# Name of current package
my $var_continues = 0;	# Variable declaration continues on last line
my $line = "";		# Current line in file
my $stmt = "";		# Current Perl statement
my @vars = ();		# List of variables in declaration
my $var = "";		# Variable in declaration
my $tagline = "";	# Tag file line

# Create a tag file line and push it on the list of found tags
sub MakeTag($$$$$)
{
    my ($tag,			# Tag name
	$type,				# Type of tag
	$is_static,			# Is this a static tag?
	$file,				# File in which tag appears
	$line) = @_;		# Line in which tag appears

    my $tagline = "";   # Created tag line

    # Only process tag if not empty
    if ($tag)
    {
		chomp $line;
		$line =~ s/\\/\\\\/g;
		$line =~ s/\//\\\//g;

		# Create a tag line
		$tagline = "$tag\t$file\t/^$line\$/";

		# If we're told to do so, add extensions
		if ($do_exts)
		{
			$tagline .= ";\"\t$type"
					. ($is_static ? "\tfile:" : "")
					. ($package_name ? "\tclass:$package_name" : "");
		}

		push (@tags, $tagline);
    }
}

# Parse package name from statement
sub PackageName($)
{
    my ($stmt) = @_;    # Statement

    if ($stmt =~ /^package\s+([\w:]+)/)
    {
		my $pkgname = $1;

		#父包名去掉。 
		$pkgname =~ s/.*://;
		return $pkgname;
    }
    else
    {
	return "";
    }
}

# Parse sub name from statement
sub FunctionName($)
{
    my ($stmt) = @_;    # Statement

    if ($stmt =~ /^\s*(\S+):(\s+)function.*/)
    {
		my $functionname = $1;
		print "##$1";

		#父包名去掉。 	
		#$function =~ s/.*://;
		return $functionname;
    }
    else
    {
	return "";
    }
}
###############################################################################
#赋值语句。 
sub VarNames($)
{
    my ($stmt) = @_;

    $stmt =~ s/^(my|our|local)\s+//;

    # Remove any assignment piece
    $stmt =~ s/\s*=.*//;

    # Now find all variable names, i.e. "words" preceded by $, @ or %
    @vars = ($stmt =~ /[\$\@\%]([\w:]+)\b/g);

    map(s/.*://, @vars);

    return (@vars);
}

###############################################################################
# mainloop. 

print "\npltags $VERSION by Michael Schaap <mscha\@mscha.com>\n\n";

# Get options
$status = GetOptions("subs!" => \$do_subs,
		     "vars!" => \$do_vars,
		     "pkgs!" => \$do_pkgs,
		     "extensions!" => \$do_exts);

# Usage if error in options or no arguments given
unless ($status && @ARGV)
{
    print "\n" unless ($status);
    print "  Usage: $0 [options] filename ...\n\n";
    print "  Where options can be:\n";
    print "    --subs (--nosubs)     (don't) include sub declarations in tag file\n";
    print "    --vars (--novars)     (don't) include variable declarations in tag file\n";
    print "    --pkgs (--nopkgs)     (don't) include package declarations in tag file\n";
    print "    --extensions (--noextensions)\n";
    print "                          (don't) include Exuberant Ctags / Vim style\n";
    print "                          extensions in tag file\n\n";
    print "  Default options: ";
    print ($do_subs ? "--subs " : "--nosubs ");
    print ($do_vars ? "--vars " : "--novars ");
    print ($do_pkgs ? "--pkgs " : "--nopkgs ");
    print ($do_exts ? "--extensions\n\n" : "--noextensions\n\n");
    print "  Example: $0 *.pl *.pm ../shared/*.pm\n\n";
    exit;
}

# Loop through files on command line - 'glob' any wildcards, since Windows
# doesn't do this for us
foreach $file (map { glob } @ARGV)
{
    # Skip if this is not a file we can open.  Also skip tags files and backup
    # files
    next unless ((-f $file) && (-r $file) && ($file !~ /tags$/)
		 && ($file !~ /~$/));

    print "Tagging file $file...\n";

    $is_pkg = 0;
    $package_name = "";
    $has_subs = 0;
    $var_continues = 0;

    open (IN, $file) or die "Can't open file '$file': $!";

    # Loop through file
    foreach $line (<IN>)
    {
		# Statement is line with comments and whitespace trimmed
		($stmt = $line) =~ s/#.*//;
		$stmt =~ s/^\s*//;
		$stmt =~ s/\s*$//;

		# Nothing left? Never mind.
		next unless ($stmt);

		# This is a variable declaration if one was started on the previous
		# line, or if this line starts with my or local
		if ($var_continues or ($stmt =~/^my\b/)
					or ($stmt =~/^our\b/) or ($stmt =~/^local\b/))
		{
			# The declaration continues if the line does not end with ;
			$var_continues = ($stmt !~ /;$/);

			# Loop through all variable names in the declaration
			foreach $var (VarNames($stmt))
			{
			# Make a tag for this variable unless we're told not to.  We
			# assume that a variable is always static, unless it appears
			# in a package before any sub.	(Not necessarily true, but
			# it's ok for most purposes and Vim works fine even if it is
			# incorrect)
			if ($do_vars)
			{
				MakeTag($var, "v", (!$is_pkg or $has_subs), $file, $line);
			}
			}
		}

		# This is a package declaration if the line starts with package
		elsif ($stmt =~/^package\b/)
		{
			# Get name of the package
			$package_name = PackageName($stmt);

			if ($package_name)
			{
			# Remember that we're doing a package
			$is_pkg = 1;

			# Make a tag for this package unless we're told not to.  A
			# package is never static.
			if ($do_pkgs)
			{
				MakeTag($package_name, "p", 0, $file, $line);
			}
			}
		}

		# This is a sub declaration if the line starts with sub
		elsif ($stmt =~/function/)
		{
			# Remember that this file has subs
			$has_subs = 1;
			print $stmt."\n";

		#	if ($do_subs)
			{
				MakeTag(FunctionName($stmt), "s", (!$is_pkg), $file, $line);
			}
		}
    }
    close (IN);
}

###############################################################################
#output.
if (@tags)
{
    # Add some tag file extensions if we're told to
    if ($do_exts)
    {
	push (@tags, "!_TAG_FILE_FORMAT\t2\t/extended format/");
	push (@tags, "!_TAG_FILE_SORTED\t1\t/0=unsorted, 1=sorted/");
	push (@tags, "!_TAG_PROGRAM_AUTHOR\tMichael Schaap\t/mscha\@mscha.com/");
	push (@tags, "!_TAG_PROGRAM_NAME\tpltags\t//");
	push (@tags, "!_TAG_PROGRAM_VERSION\t$VERSION\t/supports multiple tags and extended format/");
    }

    print "\nWriting tags file.\n";

    open (OUT, ">tags") or die "Can't open tags file: $!";

    foreach $tagline (sort @tags)
    {
		print OUT "$tagline\n";
    }

    close (OUT);
}
else
{
    print "\nNo tags found.\n";
}
