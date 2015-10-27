#!/usr/bin/perl
#2011_06_04_13:13:19   星期六   add by greshem
#没有添加头文件的头奖添加头文件 

use File::Basename;
#print basename("/root/linux/bbb"); #结果是. bbb
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
