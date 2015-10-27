#!/usr/bin/perl
foreach (glob("*.iso"))
{
	print $_,"\n";
	$dir=$_;
	$dir=~s/\.iso$//g;
	$listfile=$dir.".txt";
	print "mkdir ".$dir."\n";
	print "mount -t iso9660 ".$_." \t".$dir."  -o loop \n";
	print "find ".$dir." > ".$listfile."\n";	
	print "umount ".$dir."\n";
}
