#!/usr/bin/perl
@next_server=qw(8888888 88888888 8888888888888);
print join("|", @next_server)."\n";
	my @array=grep{$_ > 1000 } @next_server;	
#print join("\n", @array);
