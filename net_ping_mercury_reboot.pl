#!/us/bin/perl
use Net::Ping;

my $g_count=0;
sub tcp_scan_port()
{
	$p = Net::Ping->new();
	print "$host is alive.\n" if $p->ping("192.168.1.1");
	$p->close();
}


sub ping_wich_icmp()
{
	#my @host_array=qw(192.168.1.1 192.168.1.2);
	$p = Net::Ping->new("icmp");
	$host="172.16.1.251";
	$p->bind("192.168.1.100"); # Specify source interface of pings
	if( $p->ping($host, 2))
	{
		print ("$host is   reachable.\n")
	}
	else
	{
		$g_count++;
		
		if($g_count == 5)
		{
			logger ("$host is not  reachable for  5 times, router will be restart \n");
			system("/bin/mercury_reboot.sh");
			sleep(300); #5*60, 重启之后 5 分钟之内 不会有事情了. 
			$g_count=0;
		}
	}
	
	sleep(1);
	$p->close();

}
while(1)
{
	ping_wich_icmp();
}


sub logger($)
{
	(my $log_str) = @_;
    
	open(FILE,">>ping_.log") or die("file open error\n");
	my $log_time = POSIX::strftime('%Y-%m-%d %T',localtime(time()));
    	print FILE "$log_time $log_str\n";
    	print "$log_time $log_str\n";
    	close(FILE);
}

