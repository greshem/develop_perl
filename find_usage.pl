#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_02_09_14:33:31 add by greshem
1. ��ȡ������ļ��µ��ļ�. 
	touch -t 0711211201.05 test
	find . -newer test -prin
2. argc  ����.
	find . -type f -exec ls -l {} \; 
3. ��ӡ��С
	find -type f -print "%i %p\n" 
4. Ѱ��Ȩ�� perm 
	find . -perm -4444 -perm /222 ! -perm /111
5. mtime n ������
	find -type f -mtime -4  4�� ���ڵ�. 
	find -type f -mtime +4 4 ��   ֮ǰ��. 
6. 

