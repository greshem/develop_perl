#!/usr/bin/perl

sub is_IpAddr($)
{
	(my $ip)=@_;
	if($ip =~ /^([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])$/)
	{
		print $1."|". $2."|".$3."|".$4."|\n";
		return 1;
	}
	else
	{
		return undef;
	}
}

#if(is_IpAddr("1.1.1.1"))
if($0 =~/check_ip_regex.pl$/)
{
	$ip=shift or die("usage: $0  ip_addr\n");
	if(is_IpAddr($ip))
	{
		print "是 IP地址\n"
	}
	else
	{
		print "不是IP地址\n"
	}
}

