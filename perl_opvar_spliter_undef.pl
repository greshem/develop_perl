#!/usr/bin/perl
#2011_03_02_14:38:47   ÐÇÆÚÈý   add by greshem
$/=undef;
open(FILE, "metadata.xml") or die("open file error\n");
$a=(<FILE>);
#print $a;
#print length($a);
#if( $a=~/.*longdescription(.*)longdescription.*/)
$/='\n';
$a=~s/\n/QIANQIANQIAN/g;
if( $a=~/(.*)<longdescription>(.*)<\/longdescription>/)
{
	#print $2;
	$desc=$2;
}
else
{
	print "not match \n";
}

$desc=~s/QIANQIANQIAN/\n/g;
print $desc;


