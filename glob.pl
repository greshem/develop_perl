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
# ���ַ�ʽ ����Ҫһ������, ע��Ƚ�һ��. 
#foreach glob("/tmp*")
foreach (glob("/tmp*"))
{
        print $_,"\n";
}

