#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
0:08 2010-7-17

��һ�в��� �ַ���
sed '1 i //modify by qianzj' gcc_file.txt   

��һ�в��� һ���ļ��� 
sed ' 1 r issue'  |more

#####################
ע��sed '1 r issue   ' file �Ǵ���ģ� ��Ϊû�� issue     ע��ո� 


