#!/usr/bin/perl
$ip=shift or die("usage: $0  ip_addr\n");

if($ip=~ /^(([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}(((25[0-5])|(2[0-4][0-9])|(1[0-9]{2})|([1-9][0-9])|([0-9]))\.){3}((25[0-5])|(2[0-4][0-9])|(1[0-9]{2})|([1-9][0-9])|([0-9])))|(([0-9A-Fa-f]{1,4}:){0,5}:(((25[0-5])|(2[0-4][0-9])|(1[0-9]{2})|([1-9][0-9])|([0-9]))\.){3}((25[0-5])|(2[0-4][0-9])|(1[0-9]{2})|([1-9][0-9])|([0-9])))|(::([0-9A-Fa-f]{1,4}:){0,5}(((25[0-5])|(2[0-4][0-9])|(1[0-9]{2})|([1-9][0-9])|([0-9]))\.){3}((25[0-5])|(2[0-4][0-9])|(1[0-9]{2})|([1-9][0-9])|([0-9])))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:)$/) 
#if($ip =~ /^([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.([1-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])$/)
{
	print "�� IP��ַ\n"
}
else
{
	print "����IP��ַ\n"
}

print $1."|". $2."|".$3."|".$4."|\n";

__DATA__
0:0:0:0:0:0:0:1     # 127.0.0.1
FE80:0:0:0:2AA:FF:FE9A:4CA2
FE80::A:FF:FE9A:4CA2
FF02:0:0:0:0:0:0:2
FF02::2