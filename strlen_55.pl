#!/usr/bin/perl
#2011_02_24 by qzj. 

#$in=shift or die("usage: $0 input \n"); 
for (@ARGV)
{
	print  $_,"\t", length($_),"\n";
}
#print  "strlen.pl";

