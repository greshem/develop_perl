#!/usr/bin/perl
@array=(1..10);
print join(" ", @array)."\n";
print join(" ", @array[6..10]);
