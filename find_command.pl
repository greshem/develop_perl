#!/usr/bin/perl

use Data::Dumper; 
$pattern=shift;
@a=split(/:/, $ENV{PATH});
for $each (@a) 
{
	chdir($each);
	@b=glob("*.sh"); 
	for $each2 (@b) 
	{
		if(-T $each2 && $each2=~/$pattern/i)
		{
			print $each2,"\n";
		}
	}
	@b=glob("*.pl"); 
	for $each2 (@b) 
	{
		if(-T $each2 && $each2=~/$pattern/i)
		{
			print $each2,"\n";
		}
	}
}
