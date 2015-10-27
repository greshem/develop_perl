#!/usr/bin/perl
$name=shift or die("Usage: $0 pattern\n");

@files;

foreach (1..8)
{
	@tmp= grep { -f } glob("/usr/share/man/man".$_."/$name*");
	push(@files, @tmp);
}
foreach (@files)
{
	print $_,"\n";
}
