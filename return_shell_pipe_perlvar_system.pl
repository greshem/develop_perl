#!/usr/bin/perl
#2011_11_07_15:04:31   星期一   add by greshem
#参考的例子来自于 repair_one_targz_rootdir.pl
#
system("tar -xzf bbb -C aa.tar.gz ");
if($?>>8 ne 0)
{
	print ("tar -xzf $_ -C $todir 命令出错");
}
else
{
	print ("命令成功执行\n");
}
