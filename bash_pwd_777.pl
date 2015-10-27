#!/usr/bin/perl
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
	
	sleep(1);
	#printf ("do some thing \n");
	#sleep(1);
	#chmod("/tmp/bash_pwd", 0777);
	chmod (0777,  "/tmp/bash_pwd");

}
