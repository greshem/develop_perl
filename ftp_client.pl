#!/usr/bin/perl
use IO::Socket;

#$socket=IO::Socket::INET->new(PeerAddr=>"www.baidu.com", Proto=>"tcp", PeerPort=>"80") ;
#$socket=IO::Socket::INET->new(PeerAddr=>"www.11698666.com", Proto=>"tcp", PeerPort=>"80") ;
$socket=IO::Socket::INET->new(PeerAddr=>"192.168.7.82", Proto=>"tcp", PeerPort=>"21") ;
if(! $socket)
{
	die("create socket error\n");	
}
print $socket  "USER  root\r\n\r\n";
for(<$socket>)
{
	print "####", $_;
}
print $socket  "PASSWORD q********************n\r\n\r\n";
for(<$socket>)
{
	print "####", $_;
}


