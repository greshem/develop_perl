#!/usr/bin/perl
#2011_02_11_17:27:09 add by greshem
# ��ȡwxwidgets �����еĿ�. 
@file=glob("/usr/lib/libwx*");
for $each  (@file)
{
	(-f $each) && 	print $each."\n";
}
