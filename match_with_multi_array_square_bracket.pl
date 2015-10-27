#!/usr/bin/perl

use Test::More tests => 70;
 
my $input_file="aaa.zip";
($name,   $suffix)=($input_file=~/(.*)(\.zip|\.Zip|\.ZIP)/);
is( $name, "aaa");
is( $suffix, ".zip");

($name,   $suffix)=($input_file=~/(.*)([\.zip|\.Zip|\.ZIP])/);
isnt( $name, "aaa");
isnt( $suffix, ".zip");





