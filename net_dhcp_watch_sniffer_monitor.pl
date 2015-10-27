#!/usr/bin/perl
use Net::DHCP::Watch;

# server name, 
# server �Ļ�ȡӦ�ô� wks.ini �л�ȡ����������ip.
my $Server = '172.16.10.105';

# this machine ip and ethernet address, ������ mac �� ip.
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
