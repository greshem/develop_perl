#!/usr/bin/perl
@file=glob("html/*.html");
sub getFileNameNumberStr($a,$b)
{
	$first;
	$second;
	($first)=($a=~/.*\/(\d+)\..*/);
	($second)=($b=~/.*\/(\d+)\..*/);
	return $first<=> $second;
#	if($first >  $second)
#	{
#		return 1;
#	}
#	else
#	{
#		return 0;
#	}
}
foreach (sort getFileNameNumberStr @file)
{
	print $_,"\n";
}
