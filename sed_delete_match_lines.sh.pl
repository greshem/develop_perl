#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
#2011_02_25_15:24:06   ������   add by greshem ,���� yum info ������һЩ û�õ���Ϣ. 
for each in $(dir -1 |grep txt)
do
sed -i -e '/�Ѽ��ز�/d' -e '/^Found 1470/d' -e '/^Enabling fedora-debuginfo/d' -e '/Enabling updates-debuginfo/d'  $each
done

