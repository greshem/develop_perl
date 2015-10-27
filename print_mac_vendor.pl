#!/usr/bin/perl
use Net::MAC::Vendor; 
	#my $mac = "00:0d:93:29:f6:c2";
	my $mac=shift or die("Usage: $0 mac\n");

	my $array = Net::MAC::Vendor::lookup( $mac );
	map {print $_,"\n"} @{$array};
#use Net::MAC::Vendor;
#my $parsed = Net::MAC::Vendor::parse_oui("00-0D-07");
#print $parsed;


