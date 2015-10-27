#!/usr/bin/perl

#2010_08_08_10:56:14 add by qzj
#注意初始化的时候不要使用 {} , 
##要使用 ()  => 还有 ,号 ， 一个都不能错。 
%a=("aa"=>"bb", 
	cc=>"cc",
	bb=>"bb",
	dd=>"ff");
	print $a{"aa"}."\n";
	print $a{"bb"}."\n";
