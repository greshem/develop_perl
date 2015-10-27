#!/usr/bin/perl
my $dbx=shift or die("Usage: $0  input_file.dbx \n");
open(FILE, $dbx) or die("open file error\n");

while(<FILE>)
{
	if($_=~/^To:/i) 
	{
		print $_;
	}
}

close(FILE);
