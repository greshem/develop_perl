#!/usr/bin/perl
#2010_09_19_18:11:33 add by greshem
use strict;
sub test()
{
	#这里区别很大  local 写或者不写。 
	my  @word;
	push(@word, qw(1 2 3 4 5 6));
	return @word;
}
for (1..10)
{
	print scalar(test())."\n";
}
