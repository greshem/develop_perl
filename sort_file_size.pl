#!/usr/bin/perl

for  (glob("*"))
{
	my $size=(-s $_);
	#print $size."\n";
}

#�Ӵ�С ��������.
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

