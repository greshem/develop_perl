#!/usr/bin/perl
for(<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
ifconfig eth1 192.168.7.82/16
route add default gw 192.168.2.2

