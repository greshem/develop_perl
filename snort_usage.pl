#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
/usr/sbin/snort -D  -i eth1 -c /etc/snort/snort.conf
/usr/sbin/snort   -i eth1 -c /etc/snort/snort.conf

��������.
������Ҫһ��key �ſ�������.  
http://www.snort.org/snort-rules


