#!/usr/bin/perl
#2011_02_21_18:46:02 add by greshem ����ֻ��ӱ��ص� CO ������ ֮�� �����ͨ������CO ������ �Ľ���. 

use File::Basename;
#print basename("/root/linux/bbb"); #�����. bbb


for (glob("/home/svn/*") )
{
	print "svn co file://".$_."\t". basename($_)." \n";
}
