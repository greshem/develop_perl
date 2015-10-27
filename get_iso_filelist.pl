#!/usr/bin/perl
#2011_01_26_18:14:19 add by greshem
foreach (glob("*.iso"))
{
	print "#".$_,"\n";
	$dir=$_;
	$dir=~s/\.iso$//g;
	$listfile=$dir.".txt";
	print "mkdir ".$dir."\n";
	print "mount -t iso9660 ".$_." \t".$dir."  -o loop \n";
	print "find ".$dir." > ".$listfile."\n";	
	print "umount ".$dir."\n";
	print "rm -rf $dir\n";
}
