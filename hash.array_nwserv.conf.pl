#!/usr/bin/perl

open(FILE, "/etc/nwserv.conf") or die("open nwserv.conf error\n");
our %hash;
for(<FILE>)
{
	#ЦµПо.
	if($_=~/^(\s*)(\d+)(.*)/) 
	{
		#print $_;
		$line=$_;
		$line=~s/(.*)(#.*$)/$1/;
		my @array=grep {$_;}(split(/\s+/, $line));
		$key=$array[0];
		@values= @array[1..$#array];
		push(@{$hash{$key}}, @values);
	}
}

#print join("|", @{$hash{"1"}});
use Data::Dumper;
print Data::Dumper->Dump([\%hash]);
print join("|", @{$hash{"1"}});

