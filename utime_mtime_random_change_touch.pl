#!/usr/bin/perl
foreach (glob("*"))
{
	utime rand(time()), rand(time()), $_;
}
