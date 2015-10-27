#!/usr/bin/perl
#所有行都可以读出.
	open(FILE, "/etc/passwd");
	$/=undef;
	$html=(<FILE>);
	close(FILE);
	$/="\n";

print $html;

#==========================================================================
#只能读出一行 
	open(FILE, "/etc/passwd");
	$html=(<FILE>);
	close(FILE);
print "#================\n";
print $html;

