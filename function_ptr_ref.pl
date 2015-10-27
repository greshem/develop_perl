#!/usr/bin/perl
#2011_04_08_14:05:44   ÐÇÆÚÎå   add by greshem
sub print_name($)
{
	my ($line)=@_;
	print "this is line $line \n";
}
$test=\&print_name;
$test->(" linux bbb");
