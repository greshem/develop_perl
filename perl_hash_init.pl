#!/usr/bin/perl
#2010_08_05_18:27:10 add by qzjk
#注意使用大括号开始的时候，() 不能使用 {}  
# 下一个数据使用, 逗号
# pair 的时候使用 => 
#########################
#
#2010_08_10_10:29:40 add by qzj
#注意 %last_name 和 $a 的区别。 定义上的区别和() {} 上的区别。  

my %last_name=(
	'www'=>1,
	'www1'=>1,
	'www2'=>1,
	'www3'=>1
);

my $a={
	header=>"heaer",
	title=>"title",
	array=>"test",
	footer=>"footer"}:
#hash 的打印。 
#
foreach $key (keys(%last_name))
{
	print $key, "=>", $last_name{$key},"\n";
	#print $key,"\n";
}
