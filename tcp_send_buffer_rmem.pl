#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
sysctl -w net.core.rmem_max=262144 #最大的接收缓冲区大小（tcp连接）
sysctl -w net.core.wmem_max=262144 #最大的发送缓冲区大小（tcp连接）
sysctl -w net.core.rmem_default=262144 #缺省的接收缓冲区大小（tcp连接）
sysctl -w net.core.wmem_default=262144 #缺省的发送缓冲区大小（tcp连接）


