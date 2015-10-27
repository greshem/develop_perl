#!/usr/bin/perl
foreach (glob("*.txt"))
{
	($todir)=($_=~/(.*?)-.*/);
	mkdir($todir);

	print "mv ", $_, " \t $todir\n";
}
