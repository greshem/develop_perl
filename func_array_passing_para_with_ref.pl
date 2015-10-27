#!/usr/bin/perl
#2011_04_12_11:42:45   星期二   add by greshem
#perl 通过引用传递 数组. 
@array=qw(1 2 3 4 5 6);
%hash=(
1=>"b1",
2=>"b2",
3=>"b3",
4=>"b4");




# print_array(\@array);
# print_array_2(@array);
print_hash(%hash);

sub print_array($)
{
	(my $ref)=@_;
	for $_ (@{$ref})
	{
		print $_."\n";;
	}
}

#==========================================================================
#
sub print_array_2($)
{
	(my @test)=@_;
	for $_ (@test)
	{
		print $_."\n";;
	}
}

sub print_hash($)
{
	(my %hash)=@_;
	#foreach ($key=>$value)%hash
	# for (($key, $value) = each %hash)
	# {
	# 	print "$key=> $value\n";
	# }

	for $key (keys(%hash))
	{
	 	print "$key=> $hash{$key}\n";
	}
}



