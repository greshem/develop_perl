#!/usr/bin/perl
$start =shift or die("Usage: start end\n");
$end =shift  or die("Usage: start end\n");

print "char array[]={";
for ($start..$end)
{
	print $_,",";
}

print "};\n";

