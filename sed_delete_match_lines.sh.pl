#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
#2011_02_25_15:24:06   星期五   add by greshem ,处理 yum info 出来的一些 没用的信息. 
for each in $(dir -1 |grep txt)
do
sed -i -e '/已加载插/d' -e '/^Found 1470/d' -e '/^Enabling fedora-debuginfo/d' -e '/Enabling updates-debuginfo/d'  $each
done

