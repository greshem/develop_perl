sub hash_diff_comm($$)
{
	(my $hash1, $hash2)=@_;
	my %hits;
	my $count;
	
	for $each (keys(%{$hash1}))
	{
		$each=lc($each);
		if( defined($hash2->{$each})  &&  defined($each))
		{
			$count++;
			$hits{$each}++;;
		}
	}
	return ($count, %hits);
}


sub testunit()
{
	
		my %a=(
    'www'=>1,
    'www1'=>1,
    'www2'=>1,
    'www3'=>1
	);

	my %b=(
    'www'=>1,
	);

	

	(my $count, my %hits)= hash_diff_comm(\%a, \%b);
		
	print Data::Dumper->Dump([\%hits]);

}

testunit();
