#!/usr/bin/perl
#2011_02_25_16:19:45   ������   add by greshem
# ż�� ��ʱ���������. 
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
