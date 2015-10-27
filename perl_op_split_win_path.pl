#!/usr/bin/perl
#
$a="a\\\\b\\\\c";
$b="a|b|c";
print $a."\n";
#@tmp=split(/\\\\/,  $a)  #错误 split 里面的windows 的分割符号路径 

$a=~s/\\\\/\//g; 
print $a;
#@tmp=split(/\|/,  $b);
print @tmp;
