#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#bug_10m:  ע��dos2unix, û��ִ�еĻ� ���������: 
13:03 2010-6-30

��ȡ��һ�в���  ���з�ȡ������ 

1.  sed '/./{N;s/\n//}' address_mail.csv 

#2.  ΢��kb ��title ����
##<title>
#title name
#</title> 

sed '/\<title/{N;N;s/\n//g}'  *.html -i


