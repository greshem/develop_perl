#!/usr/bin/perl

print "argc=$#ARGV\n";
print "ARGV=".join("|", @ARGV)."\n";
print "$0  ". join (" ", @ARGV)."\n";
