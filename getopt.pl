#!/usr/bin/perl
use Getopt::Std;
my %opts;
getopts('scf:h', \%opts);

getopts('1f:hsx:F:L:MOSUX', \%OPT);

if( $opts{'h'} || scalar @ARGV )
{
    die("Usage: $0 [-1MOSUXhs] [-F file] [-L dir] [-f file] [-x debugflag]\n");
}

if($opts{'h'})
{
	die "Usage:   -s  sever_side  -c client_side  -f  -h help  \n";
}
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


