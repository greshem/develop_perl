#!/usr/bin/perl 
#Note: this file in gb2312 encode
#		so use this function  
#		encode("utf-8", decode("gb2312", $_));  

#use strict;
#use warnings;
use Encode;
$lang= $ENV{"LANG"};
for(<DATA>)
{
	if($lang=~/utf8/i)
	{
		$to=encode("utf-8", decode("gb2312", $_));  
		print $to;
	}
	else
	{
		print $_;
	}
}

__DATA__
[root@linux ~]# history
66 man rm
67 alias
68 man history
69 history
[root@linux ~]# !66 <==ִ�е� 66 ��ָ��
[root@linux ~]# !! <==ִ����һ��ָ��������༴ !66
[root@linux ~]# !al <==ִ������� al Ϊ��ͷ��ָ��(��ͷ�г��ĵ� 67 ��)

��������Ľ��ܣ�������ʷ�����÷��ɶ��ˣ��������Ҫִ����һ��ָ� ����ʹ�����¼�֮�⣬�ҿ���ֱ���ԡ� !! �� ���´��ϸ�ָ������ݣ����⣬ ��Ҳ����ֱ��ѡ���´�� n ��ָ��� !n ����ִ�У�Ҳ����ʹ��ָ���ͷ������ �� !vi ����ִ�����ָ�ͷ�� vi ��ָ���У�
#
