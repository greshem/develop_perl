#!/usr/bin/perl
open(ASCII, "> /tmp/ascii") or die("open file error\n");
open(NUMBER, ">/tmp/number") or die("open file error\n");

select ASCII;
for("aa".."zz")
{
	print  $_."\n";
}

select NUMBER;
for(1..1000)
{
	print $_."\n";
}

select STDOUT;;;;
{
	print "ฝแส๘มห\n";
}

for(1..1000)
{
	print $_."\n";
}

