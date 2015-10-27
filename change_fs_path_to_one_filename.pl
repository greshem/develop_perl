#!/usr/bin/perl
open(FILE, "find -type f |");
for(<FILE>)
{
	chomp;
	#print  $_;
	$to = $_;
	$to=~s/^\.\///;
	$to=~s/\//_/g;
	print "mv $_  \t", $to,"\n"
}
