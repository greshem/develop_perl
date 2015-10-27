#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

./_x_file/_root__2010_03_12.txt:_root__2010_03_12/snort_web/snort/ 下寻找老的 snort rules

/usr/sbin/snort -D  -i eth1 -c /etc/snort/snort.conf
/usr/sbin/snort   -i eth1 -c /etc/snort/snort.conf

规则下载.
不过需要一个key 才可以下载.  
http://www.snort.org/snort-rules


