#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_02_28_16:34:44   星期一   add by greshem
#开始装入数据库
db=$(find /var/cache/yum/ |grep sqlite)
for each in $db
do
echo sqlite3 $each
done

#显示所有的数据库.
.database 

#显示所有的表
.tables
#dump 某个表.
.dump 

#导出到 cvs 文本. 
.output "output.cvs"

