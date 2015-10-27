#!/usr/bin/perl
#  把 sf_mirror的项目, 一通过项目名的长度, 二通过, ASCI的字典顺序进行排序. 
@a=(<STDIN>);
@b=sort{length($a)<=>length($b) or  $a cmp $b} @a;

for (@b)
{
print $_;
}
