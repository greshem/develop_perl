#!/usr/bin/perl
#2011_04_07_19:31:33   ������   add by greshem
#��������ʽΪ������ʱ��. 
$pattern="(^root)(.*)";
open(FILE, "/etc/passwd") or die("open file error\n");

for(<FILE>)
{
	if($_=~/$pattern/)
	{
		#print $_;	
		print $1,"-->",$2."\n";
	}
}
