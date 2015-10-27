#!/usr/bin/perl
#client.pl
#


use IO::Socket;
;
$s = IO::Socket::INET->new(PeerPort => '2007',Proto => 'udp',PeerAddr => 'localhost') || die "socket error!\n";
#$msg = shift || die "Usage : $0 msg\n";
for (1..100)
{

	$length=length(pack("LLLLLLa256"));
	$count=0;
	$buffer=pack("LLLLLLA256", 1,1,1,1,1,1,"111111111111111111");

	$s->send($buffer);
	sleep(1);
}

__DATA__
typedef struct _TEST {
    int             a;
    int             b;
    int             c;
    int             d;
    int             e;
    int             f;
	char			buffer[256];
 } TEST;
