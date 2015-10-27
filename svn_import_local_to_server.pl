#!/usr/bin/perl
use Cwd;
$pwd=getcwd();
print $pwd."\n";;


use File::Basename;
#print basename("/root/linux/bbb"); #½á¹ûÊÇ. bbb
$targetname=basename($pwd);


	print <<EOF
	mkdir /home/svn/$targetname
	cd  /home/svn/$targetname
	svnadmin create \$(pwd)
	svn  import $pwd  file:///home/svn/$targetname -m "import a new"
EOF
;
