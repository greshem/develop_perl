#!/usr/bin/perl
use Net::DHCP::Watch;

# server name, 
# server 的获取应该从 wks.ini 中获取主服务器的ip.
my $Server = '172.16.10.105';

# this machine ip and ethernet address, 本机的 mac 和 ip.
my $IP	    = '172.16.10.111';
my $Ether  = '00:0C:29:0D:25:3D';

# Net::DHCP::Watch object
my $dhcpw = new Net::DHCP::Watch({
	   server => $Server,
	   client => $IP,
	   ether  => $Ether
   });

# Open network
$dhcpw->watch();
# Get status
my $stat = $dhcpw->status;
# print results
if ( $stat->{Bad} ) 
{
	print $stat->{Time}.": Remote DHCP on $Server unavailable (".$stat->{Bad}.").\n";
}

if ( $stat->{Ok}  ) 
{
	print $stat->{Time}.": Remote DHCP on $Server online.\n";
}
