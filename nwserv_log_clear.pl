#!/usr/bin/perl


#2010_12_20_15:18:38 add by greshem
#��������ģ��
#2010_12_17_11:04:53 add by greshem
#��ǰĿ¼û��tmp ��ʱ�� ���Ὠ��tmp Ŀ¼�� ��Ҫ��
#
use POSIX 'strftime';
use File::Copy;
#@orgine=localtime(time);
$file="/opt/qianlong/sysdata/remote/show2003.dbf";
@orgine=time;
print "start ",time,"\n";
$orgin_str_time=POSIX::strftime('%Y-%m-%d-%T',localtime($time));
print $orgin_str_time,"\n";
my $pid=fork();
print "pid=", $pid,"\n";
if($pid)
{
	print "parent process\n";
	exit(0);
}
else
{
	print ("child process\n");
}

setpgrp;
$year;
$month;
$day;
$hour;
$tofile;
$todir1;
$todir2;
close(1);
close(2);
close(3);
close(STDIN);
close(STDOUT);

while ( 1==1 )
{
	printf ("do some thing \n");
	if( -s "/var/log/nwserv.log" > 1900*1024*1024)
	{
		system(" cat /dev/null >  /var/log/nwserv.log ");
	}
	sleep(1);
}

