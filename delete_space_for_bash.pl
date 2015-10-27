#!/usr/bin/perl

foreach $each (<*>)
{
	$tofile=$each;
	$tofile=~s/\s/_/g;
	$tofile=~s/\(/_/g;
	$tofile=~s/\)/_/g;
	
	print $each, "->", $tofile,"\n";
	rename($each, $tofile);
}
