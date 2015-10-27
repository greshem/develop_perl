#!/usr/bin/perl
use strict;
do("./ini_parse_to_hash.pl");

my $hash= load_ini_file("/usr/share/diskplat/wks.ini");
my $disk= load_ini_file("/usr/share/diskplat/disk.ini");


use Data::Dumper;
#print Data::Dumper->Dump([$hash]);
#print Data::Dumper->Dump([$disk]);

my @disk= keys(%{$disk});
my @ip=  map{$hash->{$_}->{"IpAddr"};} keys(%{$hash});

print join("|", @ip);

