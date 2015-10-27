#!/usr/bin/perl
#2011_03_15_22:38:14   星期二   add by greshem

@array=split(/\s+/, "  bbb cc dd ee ff");
#array 里面有undef 的东西 
$string= "  0  0 0 bbb cc dd ee ff";;;;
@array=split(/\s+/, $string );
@all_defined=grep{$_;} @array;
#这个时候  通过  
#出来的东西都是 有定义的. 

#==========================================================================
$string= "  0  0 0 bbb cc dd ee ff";;;;
@array=split(/\s+/, $string );
@all_defined=grep{$_;} @array;
#做grep 处理的， 有时候 整数为0 , 最后 被 perl 处理掉了, 处理成 undef 了 参看 /etc/nwserv.conf 文件. 
#所有 处理之前把 $_=~s/^\s+//g; 前面的空格都剔除掉. 
