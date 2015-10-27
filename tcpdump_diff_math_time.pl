#!/usr/bin/perl 
open(FILE , "tmp") or die("open file error $! \n");
#$last=99999999;
$last=0;
for(<FILE>)
{
	if($_=~/^..:..:..\.(\d+).*/)
	{
		print $1."\n";
		#print $last - $1."\n";
		$last=$1;
	}
}
