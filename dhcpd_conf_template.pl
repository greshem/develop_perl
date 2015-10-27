#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
option space PXE;
option PXE.mtftp-ip               code 1 = ip-address;  
option PXE.mtftp-cport            code 2 = unsigned integer 16;
option PXE.mtftp-sport            code 3 = unsigned integer 16;
option PXE.mtftp-tmout            code 4 = unsigned integer 8;
option PXE.mtftp-delay            code 5 = unsigned integer 8;
option PXE.discovery-control      code 6 = unsigned integer 8;
option PXE.discovery-mcast-addr   code 7 = ip-address;

allow unknown-clients;
allow bootp;
allow booting;
option subnet-mask 255.255.0.0;
option broadcast-address 192.168.255.255;
option domain-name "qianlong";
option routers 192.168.2.2;
option vendor-class-identifier "PXEClient";
vendor-option-space PXE; 
option PXE.mtftp-ip 0.0.0.0;
	
ddns-update-style none;
	
subnet 192.168.0.0 netmask 255.255.0.0 {
	      	range dynamic-bootp 192.168.123.1 192.168.123.254;
default-lease-time 1600;
max-lease-time 3200;
next-server 192.168.7.87;
filename "pxelinux.0";
	
}
#vmware linux
host node1 {
    hardware ethernet 00:0c:29:f1:15:cd;
    fixed-address 192.168.7.82;
	filename "aoe.0";
	option root-path "aoe:e1.1";
}
#vwmare winxp. 
host node2 {
    hardware ethernet 00:0c:29:5a:67:b3;
    fixed-address 192.168.7.86;
	filename "aoe.0";
	option root-path "aoe:e1.1";
}
host node3 {
    hardware ethernet 48:5b:39:cb:7c:ce;
    fixed-address 192.168.1.81;
	filename "aoe.0";
	option root-path "aoe:e1.1";
}


