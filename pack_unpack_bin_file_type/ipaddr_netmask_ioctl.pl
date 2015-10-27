#!/usr/bin/perl
#"/sys/class/net/br0"
#use strict;
#use warnings;
use Socket;
require 'sys/ioctl.ph';
sub get_ip_address($) {
    my $pack = pack("a*", shift);
    my $socket;
    socket($socket, AF_INET, SOCK_DGRAM, 0);
    ioctl($socket, SIOCGIFADDR(), $pack);
    return inet_ntoa(substr($pack,20,4));
};

sub get_ip_netmask($) {
    my $pack = pack("a*", shift);
    my $socket;
    socket($socket, AF_INET, SOCK_DGRAM, 0);
    ioctl($socket, SIOCGIFNETMASK(), $pack);
    return inet_ntoa(substr($pack,20,4));
};

sub get_ip_macaddr_SIOCGIFHWADDR($)
{
	my $pack = pack("a*", shift);
    my $socket;
    socket($socket, AF_INET, SOCK_DGRAM, 0);
    ioctl($socket, SIOCGIFHWADDR(), $pack);
    return substr($pack,10,12);

}

sub get_macaddr_netaddr_from_sys()
{
	print <<EOF
	cat  /sys/class/net/br0/address      
00:0c:29:2c:7a:03
EOF
;
}
if($0=~/ipaddr_netmask_ioctl.pl$/)
{
	print get_ip_address("br0");
	print get_ip_netmask("br0");
	print get_ip_macaddr_SIOCGIFHWADDR("br0");
;

}


