#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
#2011_02_09_17:34:09 add by greshem
for each in $(find $(pwd) |grep cpp)
do
sed '$ a  //int main()'  /etc/passwd
done


#==========================================================================
#kickstat �ļ� ��  û��reboot ���ļ���, �� rootpw ���� ���  reboot 
for each in $(grep reboot *.cfg -H -c |grep 0$ |sed 's/:0$//g' ); 
do 
sed '/rootpw/a reboot' $each -i; 
done


#==========================================================================
#diskplat ��  OpenAllIniFiles(); 
#	��� ����. 
#OpenAllIniFiles_abs___TEMPLATE__();
#	OpenAllIniFiles_abs_diskplat();


for each in $(find . |grep cpp$)
do
echo $each 
sed '/OpenAllIniFiles(/a   OpenAllIniFiles_abs___TEMPLATE__();\nOpenAllIniFiles_abs_diskplat();\n'  $each  -i

done
