#!/usr/bin/perl 
use POSIX qw(strftime);
#if( -f "readme_qzj.txt")
{
	open(FILE, ">>readme_qzj.txt");
	print FILE strftime("%Y_%m_%d_%T:  ", localtime(time));
	print FILE @ARGV ;
	print FILE "\n";
	close FILE;
}
