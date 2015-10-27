#!/usr/bin/perl

use File::Temp qw(tempdir);
$tmp= tempdir();

#print $tmp;

for $each (glob("/tmp/*"))
{
	if( length($each) ==  length($tmp))
	{
		print "rm -rf $each  \n";
	}
}


