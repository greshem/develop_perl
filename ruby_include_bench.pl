#!/usr/bin/perl

while(1)
{
	test_ruby_include();
}

sub test_ruby_include()
{
	open(PIPE, "ruby  tmp.rb 2>&1  |") or die("create pipe error \n");

	for(<PIPE>)
	{
		if($_=~/tmp.rb:(\d+)/)
		{
			my $number=$1;
			print "#$number ĞĞ include ´íÎó\n";
			print(" sed \"$number\{s/^/#/g\}\" tmp.rb -i  ");
			system(" sed \"$number\{s/^/#/g\}\" tmp.rb -i ");
		}	
	}
}
