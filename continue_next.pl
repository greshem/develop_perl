#!/usr/bin/perl
#2011_02_25_16:19:45   星期五   add by greshem
# 偶数 的时候才做事情. 
for (1..100)
{
	if( $_%2)
	{
		#continue;
		next;
	}
	else
	{
		print "do something  $_\n";
	}
}
