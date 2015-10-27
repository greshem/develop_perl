#!/usr/bin/perl
for $each ( grep {-d} glob("./*"))
{
	if(-d $each."/.svn")
	{
		print $each."\n";
	}
}
