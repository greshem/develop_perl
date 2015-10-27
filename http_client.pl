#!/usr/bin/perl
use IO::Socket;

#$socket=IO::Socket::INET->new(PeerAddr=>"www.baidu.com", Proto=>"tcp", PeerPort=>"80") ;
$socket=IO::Socket::INET->new(PeerAddr=>"www.11698666.com", Proto=>"tcp", PeerPort=>"80") ;
#$socket=IO::Socket::INET->new(PeerAddr=>"192.168.7.82", Proto=>"tcp", PeerPort=>"80") ;
if(! $socket)
{
	die("create socket error\n");	
}
	print $socket  "GET \r\n\r\n";
	for(<$socket>)
	{
		print "####", $_;
	}

