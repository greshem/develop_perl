#!/usr/bin/perl
open(FILE, "/etc/passwd") or die("open file error $!\n");

for(<FILE>)
{
	if($_=~/\x72\x6f\x6f\x74/) #root 二进
	{
		print "success \n";
	}	
}
