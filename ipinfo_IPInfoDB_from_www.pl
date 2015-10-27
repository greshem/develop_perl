#!/usr/bin/perl 


#use strict;
#use warnings;


use Net::IPInfoDB;

my $g = Net::IPInfoDB->new($key);
my $c = $g->get_city("128.103.1.1");

