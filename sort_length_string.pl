#!/usr/bin/perl
#  �� sf_mirror����Ŀ, һͨ����Ŀ���ĳ���, ��ͨ��, ASCI���ֵ�˳���������. 
@a=(<STDIN>);
@b=sort{length($a)<=>length($b) or  $a cmp $b} @a;

for (@b)
{
print $_;
}
