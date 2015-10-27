#!/usr/bin/perl

use File::Basename;
use File::Path;
use File::Copy;

#@file=grep{  } glob("*");
@file= glob("*");

map{print $_,"\t";} @file;

$count=0;
foreach (@file)
{
	mkdir( $count);
	#move($_, $count);
	print "mv ".$_." $count \n";
	$count++;	
}
