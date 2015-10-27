#!/usr/bin/perl
use strict;
my $pat=shift or die("Usage: $0 pattern\n");

#1
my @files= grep { -f } glob("$pat*");
foreach (@files)
{
	print $_,"\n";
}

########################################################################
#2010_12_22_14:48:42 add by greshem
# 这种方式 还需要一个括号, 注意比较一下. 
#foreach glob("/tmp*")
foreach (glob("/tmp*"))
{
        print $_,"\n";
}

