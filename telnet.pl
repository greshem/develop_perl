#!/usr/bin/perl
use strict;
use Net::Telnet ();
my $t = new Net::Telnet (Timeout => 10, Prompt => '/: $/');
#my $t = new Net::Telnet (Timeout => 10);
#$t->open("sparky");
my $host="172.16.3.1";
$t->open($host);
#$t->login("User:"=>"username", "Password"=>"passwd");
while(1)
{
	$t->login("username", "passwd");
}
my @lines = $t->cmd("who");
print @lines;

