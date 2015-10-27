#!/usr/bin/perl
push(@INC, ".");
push(@INC, "/root/PerlQzjLib/");
use filename_increase_copy;

#print @INC;
#map {print $_,"\n";} @INC;

#use filename_increase_copy;

$file=shift or die("usage: $0 file \n");
print "echo cp ", $file, "\t",filename_increase_copy($file);

