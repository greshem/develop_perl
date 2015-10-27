#!/usr/bin/perl
$pat=shift or die("Usage: $0 pattern\n");

@files= grep { -f } glob("$pat*");
foreach (@files)
{
	print $_,":";
}
print "\n";
