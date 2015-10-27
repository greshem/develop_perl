#!/usr/bin/perl
#2011_02_11_17:27:09 add by greshem
# 获取wxwidgets 的所有的库. 
@file=glob("/usr/lib/libwx*");
for $each  (@file)
{
	(-f $each) && 	print $each."\n";
}
