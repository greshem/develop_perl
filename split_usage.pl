#!/usr/bin/perl
#2011_01_31_23:53:31 add by greshem

$file=shift or die("Usage: $0 input.file\n");
if ((-s $file) >= 2*1024*1024*1024)
{
	print "split -b 50m   $file   $file. -d  \n";
}
else ((-s $file) <=  2*1024*1024*1024)
{
	print "split -b 30m   $file   $file. -d  \n";
}

