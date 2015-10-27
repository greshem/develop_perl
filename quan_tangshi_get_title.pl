#!/usr/bin/perl

mkdir("output");

for (glob("*.txt"))
{
	print $_;
	deal_with_one_file($_);
}

#==========================================================================
sub deal_with_one_file($)
{
	(my $input_file)=@_;
	open(FILE, $input_file) or die("open  $input_file error \n");
	for(<FILE>)
	{
		chomp;
		if($_=~/^¾í/)
		{
			$_=~s/;/_/g;
			$_=~s/ /_/g;
			#print("touch output/$_\n");
			system("touch output/$_");
		}
	}
}
