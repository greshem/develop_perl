#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#####
array
{foreach item=item1 from=$passwd}
对应的变量的定义 
$var=array("passwd"=>array("a"=>bb, "bb"=>"bb"));
##############
array.array


