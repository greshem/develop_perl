#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
sysctl -w net.core.rmem_max=262144 #���Ľ��ջ�������С��tcp���ӣ�
sysctl -w net.core.wmem_max=262144 #���ķ��ͻ�������С��tcp���ӣ�
sysctl -w net.core.rmem_default=262144 #ȱʡ�Ľ��ջ�������С��tcp���ӣ�
sysctl -w net.core.wmem_default=262144 #ȱʡ�ķ��ͻ�������С��tcp���ӣ�


