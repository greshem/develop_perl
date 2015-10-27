#!/usr/bin/perl
#2011_02_21_18:46:02 add by greshem 现在只添加本地的 CO 的命令 之后 再添加通过网络CO 的命令 的建设. 

use File::Basename;
#print basename("/root/linux/bbb"); #结果是. bbb

$username=shift;
$ip="192.168.0.234";
#$ip="192.168.1.73";

for (glob("/home/svn/*") )
{
	if( -d $_)
	{
		$url=$_;
		$url=~s/\/home//g;
		#print "svn co http://192.168.0.234/".$url."\t". basename($_)." \n";
		if(defined($username))
		{
			print "svn  --username $username  --password $username   co http://".$ip."\/".$url."/trunk \t". basename($_)." \n";
		}
		else
		{
			print "svn co http://".$ip."\/".$url."/trunk \t". basename($_)." \n";
		}
	}
}
