#!/usr/bin/perl
# Simple DHCP client - sending a broadcasted DHCP Discover request

use IO::Socket::INET;
use Net::DHCP::Packet;
use Net::DHCP::Constants;

# create DHCP Packet
$discover = Net::DHCP::Packet->new(
                      xid => int(rand(0xFFFFFFFF)), # random xid
                      Flags => 0x8000,              # ask for broadcast answer
                      DHO_DHCP_MESSAGE_TYPE() => DHCPDISCOVER(),
                      DHO_VENDOR_CLASS_IDENTIFIER() => 'foo',
                      );

#$discover->yiaddr("0.0.0.0");
$discover->ciaddr("0.0.0.0");
$discover->chaddr("AABBCCDDEEFF");
# send packet
$handle = IO::Socket::INET->new(Proto => 'udp',
                                Broadcast => 0,
                                PeerPort => '67',
                                LocalPort => '6868',
                                PeerAddr => '192.168.1.100')
              or warn "socket: $@";     # yes, it uses $@ here
#for (1..10)
while(1)
{
	print "send request \n";
$handle->send($discover->serialize())
              or die "Error sending broadcast inform:$!\n";
	sleep(1);
}
	
$handle->recv($buffer, 512);
print $buffer;
