#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_02_28_16:34:44   ����һ   add by greshem
#��ʼװ�����ݿ�
db=$(find /var/cache/yum/ |grep sqlite)
for each in $db
do
echo sqlite3 $each
done

#��ʾ���е����ݿ�.
.database 

#��ʾ���еı�
.tables
#dump ĳ����.
.dump 

#������ cvs �ı�. 
.output "output.cvs"

