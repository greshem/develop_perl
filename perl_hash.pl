#!/usr/bin/perl
#2010_08_05_18:27:10 add by qzjk
#ע��ʹ�ô����ſ�ʼ��ʱ��() ����ʹ�� {}  
# ��һ������ʹ��, ����
# pair ��ʱ��ʹ�� => 

my %last_name=(
	'www'=>1,
	'www1'=>1,
	'www2'=>1,
	'www3'=>1
);
#hash �Ĵ�ӡ�� 
#
foreach $key (keys(%last_name))
{
	print $key, "=>", $last_name{$key},"\n";
	#print $key,"\n";
}
