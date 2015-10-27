#!/usr/bin/perl

my $number=sprintf("%*s", 18, "aaaaaa");
print $number."\n";

my $number=sprintf("%0*s", 18, "aaaaaa");
print $number;

