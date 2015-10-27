#!/usr/bin/perl

#2010_12_17_11:12:56 add by greshem
# 建立 tmp_sjshq 目录， 启动的时候， 否则不能正确运行。 
use POSIX 'strftime';
use File::Copy;
#@orgine=localtime(time);
$file="/opt/qianlong/sysdata/remote/sjshq.dbf";
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
mkdir("tmp_sjshq");
while ( 1==1 )
{
	#$mtime=(stat($ARGV[0]))[9];
	$mtime=(stat($file))[9];
	if( $mtime > $orgine)
	{
		$strtime=POSIX::strftime('%Y-%m-%d-%T',localtime($mtime));
		#$hour =(localtime($mtime))[2];
		#$day  =(localtime($mtime))[3];
		#$month=(localtime($mtime))[4];
		$hour  =POSIX::strftime('%H',localtime($mtime));
		$day   =POSIX::strftime('%d',localtime($mtime));
		$month =POSIX::strftime('%m',localtime($mtime));
		$year  =POSIX::strftime('%Y',localtime($mtime));

	#	print "YEAE"  ,$year,"\n";
		
		$strtime=~tr/:/_/;
		$todir1 = "./tmp_sjshq/".$year."-".$month."-".$day."/";
		$todir2 = "./tmp_sjshq/".$year."-".$month."-".$day."/".$year."-".$month."-".$day."-".$hour;
	#	print $todir1,"\n";
		mkdir($todir1);
		mkdir($todir2);
		$tofile=$todir2."/sjshq".$strtime.".dbf";
	#	print $tofile,"\n";
		copy($file, $tofile);
		system("gzip -f ".$tofile);
        	#print "copy success\n";
		#print $strtime,"\n";
		$orgine=$mtime;
	}
	sleep(1);
}
