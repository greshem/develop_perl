#!/usr/bin/perl
#2011_04_07_19:31:33   星期四   add by greshem
#当正则表达式为变量的时候. 
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
