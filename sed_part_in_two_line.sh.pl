#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
#sed '/Solution/,/Discussion/!d' /etc/passwd
sed '/root/,/news/!d' /etc/passwd

