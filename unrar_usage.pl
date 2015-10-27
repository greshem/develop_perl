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
#-o+   覆盖模式. 
#r 	 递归模式.
#  $each 是 解压文件. 
#  最后一个是 输出的目录， 假如没有这个目录， 会重新创建这个目录.  
echo unrar x -o+ -r $each ${each%%.rar}
unrar x -o+ -r $each ${each%%.rar}
	if [ $? -eq 1 ];then
		mkdir ${each%%.rar}
		unrar x -o+ -r $each ${each%%.rar}

	fi
done

