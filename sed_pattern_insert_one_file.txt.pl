#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
0:08 2010-7-17

第一行插入 字符串
sed '1 i //modify by qianzj' gcc_file.txt   

第一行插入 一个文件。 
sed ' 1 r issue'  |more

#####################
注意sed '1 r issue   ' file 是错误的， 因为没有 issue     注意空格。 


