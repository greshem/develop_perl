#!/usr/bin/perl
#
$a="a\\\\b\\\\c";
$b="a|b|c";
print $a."\n";
#@tmp=split(/\\\\/,  $a)  #���� split �����windows �ķָ����·�� 

$a=~s/\\\\/\//g; 
print $a;
#@tmp=split(/\|/,  $b);
print @tmp;
