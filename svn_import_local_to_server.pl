#!/usr/bin/perl
use Cwd;
$pwd=getcwd();
print $pwd."\n";;


use File::Basename;
#print basename("/root/linux/bbb"); #�����. bbb
$targetname=basename($pwd);


	print <<EOF
	mkdir /home/svn/$targetname
	cd  /home/svn/$targetname
	svnadmin create \$(pwd)
	svn  import $pwd  file:///home/svn/$targetname -m "import a new"
EOF
;
