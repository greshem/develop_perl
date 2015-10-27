#!/usr/bin/perl
$a=" aaaaaaaaaaaa  ";
$a=~s/^\s+//g;
$a=~s/\s+$//g;
print $a;
