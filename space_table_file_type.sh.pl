#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__

#2011_03_14_22:35:03   ����һ   add by greshem
#table �Ϳո�ע��� ����ini �������ļ�. 
# ����Ѱ�� һ�� rpm-devel �� ���������ͷ�ļ���ʱ��. 
��key ����������  �� Ū���ո�. 
sed '/^\S/{s/$/\n/g}' tmp 

 sed '/^\S/{s/^/\n/g}' tmp

