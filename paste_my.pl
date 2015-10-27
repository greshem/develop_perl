#!/usr/bin/perl
use File::Slurp qw(edit_file read_file);

my $file1=shift or die("usage: file1 file 2\n");
my $file2=shift or die("usage: file1 file 2\n");

my @array1= read_file($file1);
my @array2= read_file($file2);

for(0..$#array1)
{
	chomp($array1[$_]);
	#chomp($array2[$_]);

	print $array1[$_]."|".$array2[$_]."\n";
}

