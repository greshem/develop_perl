#!/usr/bin/perl 


@array=qw(000 001  002  003 004 005);
$length=3;
%hash= array_to_hash(@array);
print gen_next($length, %hash)."\n";;

@array=qw(0000 0001   0002  0003 004 005);
$length=4;
%hash2= array_to_hash(@array);
print gen_next($length, %hash2)."\n";




#==========================================================================
sub gen_next($%)
{
	(my $length, my  %pool)=@_;
	my $i=0;
	while(1)
	{
		$number=sprintf("%0*d", $length, $i);
		if(! defined($pool{$number}))
		{
			return $number;
		}
		$i++;
	}
}
sub array_to_hash(@)
{
	(my @input)=@_;
	my %hash;
	for( @input)
	{
		$hash{$_}=1;
	}
	return %hash;
}

