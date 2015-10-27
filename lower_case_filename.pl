#!/usr/bin/perl
for (glob("*"))
{
	print "mv ",$_,"\t", lc($_),"\n";
}
