#!/usr/bin/perl
#2011_02_21_18:46:02 add by greshem ����ֻ��ӱ��ص� CO ������ ֮�� �����ͨ������CO ������ �Ľ���. 

use File::Basename;
#print basename("/root/linux/bbb"); #�����. bbb


for (glob("/home/svn/*") )
{
	if( -d $_)
	{
		$url=$_;
		$url=~s/\/home//g;
		#print "svn co http://192.168.0.234/".$url."\t". basename($_)." \n";
		print "svn co http://192.168.1.73/".$url."\t". basename($_)." \n";
	}
}
