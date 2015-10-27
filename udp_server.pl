#!/usr/bin/perl
#server.pl
use IO::Socket::INET; 
$s=new IO::Socket::INET->new(LocalPort =>'2007',Proto=>'udp') || die "socket error!\n";
print "server start ......\n";

while(1)
{


	$length=length(pack("LLLLLLa256"));
	$s->recv($msg,$length);

	#print "\nRecv : $msg\n" if($msg);

		($a, $b, $c, $d, $e, $f, $buffer)=unpack("LLL L L L A256", $msg);
		print "a=" , $a,"|";
		print "b=" , $b,"|";
		print "c="  , $c  , "|";
		print "d="  , $d  , "|";
		print "e="  , $e  , "|";
		print "f="  , $f  , "|";
		print "buffer="  , $buffer  , "\n";

}
exit 0;


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
