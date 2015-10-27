if(is_centos())
{
	print ("is centos \n");
}
else
{
	printf("not centos \n");
}

sub is_centos()
{	
	my $buf=file_get_contents("/etc/issue");
	if($buf=~/centos/i)
	{
		return 1;
	}

	return undef;
}
sub is_rhel_5_1()
{
	my $buf=file_get_contents("/etc/issue");
	if($buf=~/5.1/)
	{
		return 1;
	}		
	return undef;
}

sub file_get_contents($)
{
	(my $filename)=@_;
	open(FILE, $filename);
	$/=undef;
	my $string=(<FILE>);
	close(FILE);
	$/="\n";
	return  $string ;
}

