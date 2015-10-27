#!/usr/bin/perl
$i=1;
$file=shift or die("open file error\n");
open(FILE, $file ) or die("open file error $!\n");
while(<FILE>)
{
	print $i."_".$_;
	$i++;
}
