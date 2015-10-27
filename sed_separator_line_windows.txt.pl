#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
13:02 2010-6-30
 在 bash 里面输入的时候  ctrl_v ctrl_m 就可以得到 这个 ^M 的字符了， 在 cat -vet 里面显示 ^M 
 sed 's/^M//g' 就可以把换行符删除掉了
