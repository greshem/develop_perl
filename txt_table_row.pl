#!/usr/bin/perl
use strict;
my $row=10;
my $col=10;
my $seg="-------|"x11;
$seg=~s/^-/|/g;

#$seg{0}="|";

print $seg."\n";;
for my $x (0..10)
{
	my $cur="";
	for my $y (0..10)
	{
		$cur=sprintf "%s%7d|", $cur, $x.$y.$x.$y.$y.$y;
	}
	$cur=~s/^./|/g;
	print $cur;
	print "\n";
	print $seg."\n";;
}
