#!/usr/bin/perl
#2011_02_01_13:47:12 add by greshem
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
for each in $(dir -1 |grep rar$)
do
#x extrace
#-o+   ����ģʽ. 
#r 	 �ݹ�ģʽ.
#  $each �� ��ѹ�ļ�. 
#  ���һ���� �����Ŀ¼�� ����û�����Ŀ¼�� �����´������Ŀ¼.  
echo unrar x -o+ -r $each ${each%%.rar}
unrar x -o+ -r $each ${each%%.rar}
	if [ $? -eq 1 ];then
		mkdir ${each%%.rar}
		unrar x -o+ -r $each ${each%%.rar}

	fi
done

