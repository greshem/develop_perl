#!/usr/bin/perl
#2011_02_01_12:51:00 add by greshem
use POSIX 'strftime';

use File::Copy;
#@orgine=localtime(time);
$orgine=time();
#print "start ",time,"\n";
$orgin_str_time=POSIX::strftime('%Y-%m-%d-%T',localtime($orgine));
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

$year; $month; $day; $hour; $tofile; $todir1; $todir2; my $lastpid; my $round; my $ncpserv_pid; my $have_done=0;
my $last_pid;

while ( 1==1 )
{
#	system("/bin/getTodayTime.sh >> find_file_wc.txt");
#	system("find -type f |wc >>  find_file_wc.txt");
	system("du -h");
	
	sleep(60*5);

}
