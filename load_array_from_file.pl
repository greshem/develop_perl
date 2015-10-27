#!/usr/bin/perl

sub load_array_from_file($)
{
	(my $filename)=@_;
	my @ret;
	open(FILE, $filename) or die("open file error , $! \n");
	for(<FILE>)
	{
		chomp($_);
		push(@ret, $_);
	}
	return @ret;
}

my @ret=load_array_from_file("/etc/passwd");

print join("\n", @ret);
