#!/usr/bin/perl
# /bin/utf8_to_gb2312.sh
open(FILE, "powerword2007_pwgcesx.txt")  or die("open file error \n");

for(<FILE>)
{
	#print $_;
	if($_=~/\[\[(.*?)\]\].*\[\[(.*)\]\]/)
	#if($_=~/\[\[(.*?)\]\]/)
	{
		print $1."\t". $2 ."\n";
	}
	else
	{
		print $_."\n";
	}
}
