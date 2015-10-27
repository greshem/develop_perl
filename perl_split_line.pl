#!/usr/bin/perl
#2010_08_06_13:06:53 add by qzj
	$line="aa bb cc ee ff";
	@array=split(/\s+/, $line);
	print "assert $array[0] = aa"
	#error
	#@array=split("/\s+/", $_);
