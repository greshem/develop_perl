#!/usr/bin/perl

for  (glob("*"))
{
	my $size=(-s $_);
	#print $size."\n";
}

#从大到小 进行排序.
sub file_size($a,$b)
{
	my $first=$a;
	my $second=$b;
	return (-s $first) <=> (-s $second);
}


my @array=grep {-f} (glob("*"));
foreach (sort file_size @array )
{
	#print (-s $_)."\t=>".$_."\n";
	print $_."=> ".(-s $_)."\n";
}

