#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
13:02 2010-6-30
 �� bash ���������ʱ��  ctrl_v ctrl_m �Ϳ��Եõ� ��� ^M ���ַ��ˣ� �� cat -vet ������ʾ ^M 
 sed 's/^M//g' �Ϳ��԰ѻ��з�ɾ������
