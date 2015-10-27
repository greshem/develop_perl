#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
iptables - t mangle -A PREROUTING  -s 10.0.0.0/255.255.255.1 -j MARK --set-mark 0x1
iptables - t mangle -A PREROUTING  -s 10.0.0.0/255.255.255.1 -j MARK --set-mark 0x2
iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE
iptables -t nat -A POSTROUTING -o ppp1 -j MASQUERADE
ip rule add fwmark 1 table ppp0
ip rule add fwmark 2 talbe ppp1
iptables -t nat -A POSTOUTING -o eth0 -j MASQUERADE
iptables -A INPUT -i eth0 -p icmp -j DROP
iptables -A INPUT -i eth0_wlan -p icmp -j ACCEPT
iptables -A FORWARD -s $LAN_NET/MASK -p icmp -j ACCEPT
iptables -t nat -A POSTROUTING -j MASQUERADE
iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -o eth0  -j MASQUERADE


