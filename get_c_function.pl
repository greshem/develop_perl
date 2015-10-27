#!/usr/bin/perl

#2011_04_10_21:30:52   星期日   add by greshem
# 用cproto 是一个更好的方案.
open(FILE,"$ARGV[0]") or die("open file error\n");
local($/);
$file=<FILE>;

#while($file=~/(\S+)\s*\((.*)\)\s*\{.*\}/)
#这个是定义的.
#while($file=~/(\S*)\s+(\S+)\s*\((.*)\)\s+\{/g)
#调用的函数.
while($file=~/\((.*)\)/g)
{
	if($2!~/if|while|for|switch/)
	{
	#print "$1 $2( $3 ) \n";
	print "$_ ";
	}
}
