#!/usr/bin/perl
#2011_06_04_13:13:19   ������   add by greshem
#û�����ͷ�ļ���ͷ�����ͷ�ļ� 

use File::Basename;
#print basename("/root/linux/bbb"); #�����. bbb
#$targetname=basename($pwd);

@array=`find . -type f|grep \.h\$ `;
for (@array)
{
	if($_!~/\.h$/)
	{
		next;
	}
	#print $_;
	chomp;
	$upper=basename($_);
	print "### $upper\n";
	$upper= uc($upper);
	$upper=~s/\./_/g;
	$upper=~s/\//_/g;
	print "cat  >> $_  <<EOF\n";
	print "#ifndef  $upper"."__HEADER__\n";
	print "#define $upper"."__HEADER__\n";
	print "#endif\n";
	print "EOF\n";

}
