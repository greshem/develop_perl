#!/usr/bin/perl

#2010_08_08_10:56:14 add by qzj
#ע���ʼ����ʱ��Ҫʹ�� {} , 
##Ҫʹ�� ()  => ���� ,�� �� һ�������ܴ� 
%a=("aa"=>"bb", 
	cc=>"cc",
	bb=>"bb",
	dd=>"ff");
	print $a{"aa"}."\n";
	print $a{"bb"}."\n";
