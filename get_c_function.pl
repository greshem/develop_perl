#!/usr/bin/perl

#2011_04_10_21:30:52   ������   add by greshem
# ��cproto ��һ�����õķ���.
open(FILE,"$ARGV[0]") or die("open file error\n");
local($/);
$file=<FILE>;

#while($file=~/(\S+)\s*\((.*)\)\s*\{.*\}/)
#����Ƕ����.
#while($file=~/(\S*)\s+(\S+)\s*\((.*)\)\s+\{/g)
#���õĺ���.
while($file=~/\((.*)\)/g)
{
	if($2!~/if|while|for|switch/)
	{
	#print "$1 $2( $3 ) \n";
	print "$_ ";
	}
}
