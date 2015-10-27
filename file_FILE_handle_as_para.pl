#!/usr/bin/perl
open(FILE, "> /tmp/tmp") or die("open file error\n");
add_header(FILE, " this is header \n");
add_middle(FILE, " this is middle \n");
add_buttom(FILE, " this is buttom \n");
sub add_header($$)
{
	(my $output, $str)=@_;
	print $output "HEADER:".$str;
}
sub add_middle($$)
{
	(my $output, $str)=@_;
	print $output "MIDDLE:".$str;
}
sub add_buttom($$)
{
	(my $output, $str)=@_;
	print $output "BUTTOM:".$str;
}

