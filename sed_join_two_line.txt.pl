#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#bug_10m:  注意dos2unix, 没有执行的话 会造成困惑: 
13:03 2010-6-30

读取下一行并把  换行符取代掉。 

1.  sed '/./{N;s/\n//}' address_mail.csv 

#2.  微软kb 的title 如下
##<title>
#title name
#</title> 

sed '/\<title/{N;N;s/\n//g}'  *.html -i


