#!/usr/bin/perl
#2011_11_07_15:04:31   ����һ   add by greshem
#�ο������������� repair_one_targz_rootdir.pl
#
system("tar -xzf bbb -C aa.tar.gz ");
if($?>>8 ne 0)
{
	print ("tar -xzf $_ -C $todir �������");
}
else
{
	print ("����ɹ�ִ��\n");
}
