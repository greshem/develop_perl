#!/usr/bin/perl
#2010_08_05_18:27:10 add by qzjk
#ע��ʹ�ô����ſ�ʼ��ʱ��() ����ʹ�� {}  
# ��һ������ʹ��, ����
# pair ��ʱ��ʹ�� => 
#########################
#
#2010_08_10_10:29:40 add by qzj
#ע�� %last_name �� $a ������ �����ϵ������() {} �ϵ�����  

my %last_name=(
	'www'=>1,
	'www1'=>1,
	'www2'=>1,
	'www3'=>1
);

my $a={
	header=>"heaer",
	title=>"title",
	array=>"test",
	footer=>"footer"}:
#hash �Ĵ�ӡ�� 
#
foreach $key (keys(%last_name))
{
	print $key, "=>", $last_name{$key},"\n";
	#print $key,"\n";
}
