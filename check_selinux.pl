
sub check_selinux()
{
	my $str=`grep ^SELINUX= /etc/sysconfig/selinux`;
	print $str."\n";
#SELINUX=enforcing

	if($str=~/\s*SELINUX.*enforcing/)
	{
		die "selinux is not disabled \n";
	}
}

check_selinux();
