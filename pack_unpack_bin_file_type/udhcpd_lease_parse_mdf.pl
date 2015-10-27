#!/usr/bin/perl
use POSIX qw(strftime);
use Socket;

# taskdat_pack_unpack.pl

#N netowrk order 
#L 

$length=length(pack("Z16NN"));
print $length."\n";

$length=length(pack("c16NN"));
print $length."\n";



open(FILE, "/tmp/udhcpd.leases");
while($ret=sysread(FILE, $a, $length))
{
	print $ret."\n";

	#($mac,  $ipaddr, $expire)=unpack("ccccccccccccccccNN", $a);
	($mac,  $ipaddr, $expire)=unpack("Z16NN", $a);
	
	 $output=$ipaddr;
	#print inet_ntoa($mac);
	#print inet_ntoa($output);
	#print inet_ntoa($expire);

	$output=unpack('L', pack('N', $ipaddr));
	
	#$output=unpack('N', pack('L', $ipaddr));
	print "ipaddr   " , long2IpStr($output), "\n";
	# 

	#$output=unpack('L', pack('N', $expire));
	$output=unpack('N', pack('L', $expire));
	#print "last_time " , strftime("%Y-%m-%d-%H:%M:%S", localtime($output)), "\n";
	print  "time: $output \n";
	print  "time: $expire \n";

}



sub network_order()
{

	#htonl: 
	$out = unpack('N*', pack('L*', $in));

	#ntohl: 
	$out = unpack('L*', pack('N*', $in));

	#ntohs: 
	$out = unpack('S*', pack('n*', $in));


}

sub long2IpStr($)
{
	(my $in)=@_;
	#$netInt=pack("N", $in);
	$netInt=pack("I", $in);
	#$netInt=$in;
	return inet_ntoa($netInt);
}
