#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__

#2011_03_14_22:35:03   星期一   add by greshem
#table 和空格注册的 类似ini 的配置文件. 
# 用来寻找 一个 rpm-devel 包 里面的特征头文件的时候. 
在key 的上下两行  都 弄出空格. 
sed '/^\S/{s/$/\n/g}' tmp 

 sed '/^\S/{s/^/\n/g}' tmp

