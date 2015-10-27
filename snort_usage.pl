#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
/usr/sbin/snort -D  -i eth1 -c /etc/snort/snort.conf
/usr/sbin/snort   -i eth1 -c /etc/snort/snort.conf

规则下载.
不过需要一个key 才可以下载.  
http://www.snort.org/snort-rules


