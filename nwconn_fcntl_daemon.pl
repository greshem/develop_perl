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
$year;
$month;
$day;
$hour;
$tofile;
$todir1;
$todir2;
my $lastpid;
my $round;
my $ncpserv_pid;
my $have_done=0;
while ( 1==1 )
{
	#printf ("do some thing \n");
	#print "nwserv pid ".get_nwserv_pid()."\n";
	$round++;
	sleep(1);
	#print "round ".$round."\n";
	
	$lastpid= $ncpserv_pid;
	#$nwserv_pid= get_nwserv_pid();
	$ncpserv_pid= get_ncpserv_pid();

	if(defined($ncpserv_pid))
	{
		#print "ncpserv pid ".$ncpserv_pid."\n";
	}	
	else
	{
		#print "PANIC: ncpserv  没有启动, ?!!!! \n";
		next;
	}
	$count=check_all_nwconn_fcntl();
	if ($count > 0)
	{
			print "ERROR happen  发现 ".$count."个 fcntl\n ";
			chdir("/vld/fcntl_watch_log/");	
			
			my $today=POSIX::strftime("%Y-%m-%d", localtime(time()));
			
			$dest_dir=$today."_".$ncpserv_pid;	
			if (!  -d $dest_dir)
			{
				print "故障事件log 路径".$dest_dir,"\n";
				mkdir ($dest_dir);
				chdir($dest_dir);
				system("/bin/collect_nwserv_info.sh > log");
			}
			else
			{
			#	print  $dest_dir."目录存在,日志己经记录\n";
			}
	}
	else
	{
		#print "没有异常\n";
	}
}

sub get_ncpserv_pid()
{
	open(FILE, "pidof ncpserv|");
	$pid=<FILE>;
	$pid=~s/\s+//g;
	if( $pid=~/\d+/ )
	{
		return $pid;
	}
	else
	{
		return undef;
	}
}

sub get_nwserv_pid()
{
	open(FILE, "pidof nwserv|");
	$pid=<FILE>;
	$pid=~s/\s+//g;
	if( $pid=~/\d+/ )
	{
		return $pid;
	}
	else
	{
		return undef;
	}
}


sub check_all_nwconn_fcntl()
{
	my $result=0;
	my $wchan;
	open(FILE, "ps -l -C nwconn|");
	for(<FILE>)
	{
		#		print $_;

		#F S   UID   PID  PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
		#4 S    99  2696  2636  0  80   0 -   538 -      ?        00:00:00 nwconn

		@array=split(/\s+/, $_);
	#	print $array[10],"\n";
		$wchan=$array[10];
		if($wchan=~/fcntl/i)
		{
			$result++;
		}	
		#print @array,"\n";
	}		
	close(FILE);
	return $result;
}

