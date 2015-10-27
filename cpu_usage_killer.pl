#!/usr/bin/perl

#2011_01_06_23:54:09 add by greshem, 彻底修改好了，20分钟为限度. 20分钟为限度.  
#2011_01_04_18:13:49 add by greshem , 处理 cpan 的perl 占用率太高的问题. 

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
my $count=0;;
while ( 1==1 )
{
	#print "Round ".$round."\n";
	$usage=get_cpu_usage();
	if($usage > 80)
	{
		$count++;
		#print "连续".(5*$count)."秒 , cpu 占用率 > 80%\n";
		#24*5 秒 -> 2分钟. 
		#240*5 秒-> 20分钟. 
		if($count> 240)
		{
			print "开始杀死 可疑进程\n";
			$count=0;
			logger(" 20 分钟 之内的cpu 利用率超过 80% , 开始进行检测. 杀死 死循环进程. \n");
			top_snap_progs();
		}
	}
	else
	{
		$count=0;
	}

	#print $usage,"\n";
	$round++;
}

# /****************************************************************************
# * Description	
# * @param 	
# * @return 	
# * notice: 
#   PID USER      PR  NI  VIRT  RES  SHR S %CPU %MEM    TIME+  SWAP DATA COMMAND 
#	120 root      20   0  7056 2408 1272 R 68.3  0.5  12:28.97 4648 1244 bash    
#  	370 root      20   0  292m  52m  680 S  3.8 10.6  49:57.91 239m 288m l2dcd   

# * *************************************************************************/
sub top_snap_progs()
{
	open(FILE, "top -b -n 1 |") or die("open file error\n");	
	my $count=0;
	my $inhead=1;
	my $hot_line=7;
	for(<FILE>)
	{
		#print $_;
		$_=~s/^/  /g; 
		if($_=~/COMMAND/){ $inhead=0;};
		@array=split(/\s+/,$_);
		#print @array,"\n";
		if($inhead==0)
		{	
			print $array[0], "\t", $array[1],"\t",  $array[2]."\t",  $array[9], "\t", $array[14], "\n";
		}
		if($count==$hot_line)
		{
			logger("kill 进程: ". $array[14]." \t pid =".$array[1]."\n");
			logger("kill -9 $array[1]\n");
			system("kill -9 $array[1]\n");
		}
		$count++;
		if($count>=10)
		{
			last;
		}
	}
	close(FILE);
}

# /****************************************************************************
# * Description: 任务只是解析 /proc/stat 不做计算. 	
# * @param 	
# * @return 	
# * *************************************************************************/
sub get_cpu_stat 
{ 
     my @stats;
     my $fh; 
	
	open($fh, "cat  /proc/stat | ")  or die "$!";
	while(<$fh>)
	{ 
		if(/^cpu .*/)
		{ 
			@stats=split;
		} 
     }
	close $fh;
	#then, we parse the cpu stat information; 
	#the information from "man proc", 
	#the format is for Linux 2.6.11 or higher 
	#cpu  user   nice  system idle     iowait irq  softirq steal 
	#cpu  628808 1642  61861  24978051 22640  349  3086    0     0 
	# 数据格式如上所示，更详细的信息请参考 proc 的 manpage
   
	my $total=$stats[1] + $stats[2]+$stats[3] +$stats[4];
	my $idle=$stats[4];
	# 返回当前 CPU 的 total 和 idle 时间片计数 
	return ($total, $idle);
}

# /****************************************************************************
# * Description: 从上面返回的 东西进行计算， 得出CPU占用率. 	
# * @param 	
# * @return 	
# * *************************************************************************/
sub get_cpu_usage()
{
	my ($t1, $i1)=get_cpu_stat();
	sleep 5;
	my ($t2, $i2)=get_cpu_stat();

	my $total=$t2-$t1;
	my $idle= $i2-$i1;
	my $per = 100*($total -$idle ) /$total;
	#print "cpu 占用率".$per."\n" ;
	return $per;
}


sub logger($)
{

	(my $str)=@_;

	use POSIX 'strftime';
	$cur_time=POSIX::strftime('%Y-%m-%d-%T',localtime(time()));
	#print "nowTime -> ", $cur_time,"\n";

	open(FILE, ">> /var/log/cpu_usage_killer.log");
	print FILE $cur_time."\t ".$str;	
	close(FILE);
}
