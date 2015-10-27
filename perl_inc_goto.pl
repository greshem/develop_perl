#!/usr/bin/perl
for (@INC)
{
	if(-d $_)
	{
		print "cd  $_ ".$each." && ls -la \n";
	}
	
}
