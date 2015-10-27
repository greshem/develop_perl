#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/usr/bin/perl


#2010_12_20_15:18:38 add by greshem
#制作成了模板
#2010_12_17_11:04:53 add by greshem
#当前目录没有tmp 的时候， 不会建立tmp 目录， 需要掉
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
mkdir("tmp");
while ( 1==1 )
{
	printf ("do some thing \n");
	sleep(1);
}

