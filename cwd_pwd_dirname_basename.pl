#!/usr/bin/perl

use Cwd;
use File::Basename;

our $g_pwd=getcwd();
our $g_basename=basename($g_pwd);
our $g_dirname=dirname($g_pwd);

print "g_pwd=".$g_pwd."\n";;
print "g_basename=".$g_basename."\n";
print "g_dirname=".$g_dirname."\n";



	print <<EOF
	mkdir /home/svn/$targetname
	cd  /home/svn/$targetname
	svnadmin create \$(pwd)
	svn  import $(pwd)  file:///home/svn/$targetname -m "import a new"
EOF
;

sub testunit()
{
	print basename("/root/linux/bbb"); #½á¹ûÊÇ. bbb
}
