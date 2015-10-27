#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_02_09_14:33:31 add by greshem
1. 获取比这个文件新的文件. 
	touch -t 0711211201.05 test
	find . -newer test -prin
2. argc  参数.
	find . -type f -exec ls -l {} \; 
3. 打印大小
	find -type f -print "%i %p\n" 
4. 寻找权限 perm 
	find . -perm -4444 -perm /222 ! -perm /111
5. mtime n 天以内
	find -type f -mtime -4  4天 以内的. 
	find -type f -mtime +4 4 天   之前的. 
6. 

