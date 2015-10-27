#!/usr/bin/perl
#2011_02_24 by qzj. 

$in=shift or die("usage: $0 input \n");
print  "average.pl";

open(FILE,  $in) or die("open file error $! \n");

$total=0;
$count=0;
for(<FILE>)
{
	if(/^\s*(\d+).*/)
	{
			print $1."\n";	
			$total+=$1;
			$count++;
	}	
}
print "average: ".($total/$count)."\n";
