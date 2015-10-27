#!/usr/bin/perl -w
# tcp_socket_cli.pl
use strict;
use Socket;

my $addr = $ARGV[0] || '127.0.0.1';
my $port = $ARGV[1] || '3000';
my $dest = sockaddr_in($port, inet_aton($addr));
my $buf = undef;

socket(SOCK,PF_INET,SOCK_STREAM,6) or die "Can't create socket: $!";
connect(SOCK,$dest)                or die "Can't connect: $!";

$buffer="this is client info";
my $bs = sysread(SOCK, $buffer); # try to read 2048
#print "Received $bs bytes, content $buf\n"; # actually get $bs bytes
close SOCK;