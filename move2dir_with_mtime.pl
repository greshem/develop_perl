#!/usr/bin/perl
use POSIX qw(strftime);
	for $each  (<*>)

	{
	#	if(-f $each )
		{
			$mtime=(stat($each))[9];
			$time=strftime("_xfile_%Y_%m", localtime($mtime));
			print "mv ", $each, "\t", $time,"\n";
		}
	}
