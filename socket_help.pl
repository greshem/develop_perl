#!/usr/bin/perl
use Getopt::Std;
my %opts;
getopts('scf:', \%opts);

if($opts{'s'})
{
	print "server side\n";
}

if($opts{'c'})
{
	print "client side\n";
}

if($opts{'f'})
{
	print "socket funcion ", $opts{'f'},"\n";
}


