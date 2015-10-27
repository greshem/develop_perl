#!/usr/bin/perl
$file=shift or die("Usage $0  col_number file one_col_date\n");
$col_number=shift or die("Usage $0 file  col_number one_col_date");
$data=shift or $data="xxxxxxxx";

open(FILE, $file) or die("open file error\n");
while(<FILE>)
{
	@array=split(/\s+/, $_);
	@new_array=(@array[0..($col_number-1)], $data, @array[($col_number)..scalar(@array)] );
	print join("\t", @new_array),"\n";
}
