#!/usr/bin/perl

use warnings;
#use strict;

sub arraymap 
{
	# (my @array, my $sub)=@_;

	my $array=shift;
	my $sub=shift;


	for(@{$array})
	{
		#chomp;
		$sub->();
	}
}

sub hashify 
{
	(my $file)=@_;

	my %seen;
	arraymap $file, sub { $seen{$_}++ };
	return \%seen;
}

sub compare_or 
{
	(my $array1, my $array2) = @_;

	arraymap $array1, sub { print "$_\n" };
	arraymap $array2, sub { print "$_\n" };
}

sub compare_xor 
{
	(my $array1, my $array2) = @_;
	
	compare_not($array1, $array2);
	compare_not($array2, $array1);
}

sub compare_not 
{
	(my $array1, my $array2) = @_;

	my $seen=hashify($array2);
	arraymap $array1, sub { print "$_\n" unless $seen->{$_} };
}

sub compare_and 
{
	 (my $array1, my $array2) = @_;

	my $seen=hashify($array2);
	arraymap $array1, sub { print "$_\n" if $seen->{$_} };
}
my @array1=qw(1 2 3 4 5 6 7 );
my @array2=qw(        5 6 7 8 9);

#compare_or(\@array1, \@array2);   # ºÏ²¢
#compare_not(\@array1, \@array2);  # 8 9 
#compare_not(\@array2, \@array1);  # 1 2 3 4 
#compare_xor(\@array1, \@array2);  # 1 2 3 4  8 9 
compare_and(\@array1, \@array2);   # 5 6 7 

__DATA__
if (@ARGV >= 4 && $ARGV[3] eq "_") 
{
	delete $ARGV[3];
}

if (@ARGV != 3) 
{
	warn "Usage: combine file1 OP file2\n";
	warn "Usage: combine file1 [ and| not| or| xor ] file2\n";
	die("\n");
}

my $file1=shift;
my $op=lc shift;
my $file2=shift;

if ($::{"compare_$op"}) 
{
	no strict 'refs';
	"compare_$op"->($file1, $file2);
}
else 
{
	die "unknown operation, $op\n";
}

