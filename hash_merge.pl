#外贸系统里面用到了 关键字的合并的问题.
sub merge_hash($$)
{
	(my $hash, my $append_hash)=@_;
	my $key;
	for $key  (keys(%{$append_hash}))
	{
		if(defined($hash->{$key}))
		{
			$hash->{$key}= $hash->{$key}+1;
		}
		else
		{
			$hash->{$key}= 1;
		}
	}
	return %{$hash};
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
    'www1'=>1,
    'www2'=>1,
    'www3'=>1,
	);

	my %output=merge_hash(\%a, \%b);
	#print %output;
	print Data::Dumper->Dump([\%output]);

	#exit(0);

}

