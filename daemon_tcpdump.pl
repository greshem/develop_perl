#!/usr/bin/perl
#2011_02_01_12:51:00 add by greshem
use POSIX 'strftime';

use File::Copy;
#@orgine=localtime(time);
$orgine=time();
#print "start ",time,"\n";
$orgin_str_time=POSIX::strftime('%Y-%m-%d-%T',localtime($orgine));
print $orgin_str_time,"\n";

#  my $pid=fork();
#  print "pid=", $pid,"\n";
#  if($pid)
#  {
#  	print "parent process\n";
#  	exit(0);
#  }
#  else
#  {
#  	print ("child process\n");
#  }

setpgrp;

$year; $month; $day; $hour; $tofile; $todir1; $todir2; my $lastpid; my $round; my $ncpserv_pid; my $have_done=0;
my $last_pid;

while ( 1==1 )
{
	my $output_file=get_YYYY_mm_dd_T();	
	$output_file.="_http.pcap";
	#system("tcpdump -c 10000  port 80   -i any -w $output_file   ");
	system("tcpdump -c 10000       -i any -w $output_file   ");
	
}

sub get_YYYY_mm_dd_T()
{
	use POSIX 'strftime';
	$cur_time=POSIX::strftime('%Y-%m-%d-%T',localtime(time()));
	return $cur_time;	
}

