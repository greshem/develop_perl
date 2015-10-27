#!/usr/bin/perl

#2011_01_11_11:48:07 add by greshem, 修改去掉了杀死进程的东西， 只监控cpu 利用率, 参考 /root/daemon_monitor/cpu_usage_perl.pl 
#2011_01_06_23:54:09 add by greshem, 彻底修改好了，20分钟为限度. 20分钟为限度.  
#2011_01_04_18:13:49 add by greshem , 处理 cpan 的perl 占用率太高的问题. 

use POSIX 'strftime';

setpgrp;

while ( 1==1 )
{
	#print "Round ".$round."\n";
	$usage=get_cpu_usage();
	print "cput 利用率". $usage,"\n";
	$round++;
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
	sleep 3;
	my ($t2, $i2)=get_cpu_stat();

	my $total=$t2-$t1;
	my $idle= $i2-$i1;
	my $per = 100*($total -$idle ) /$total;
	#print "cpu 占用率".$per."\n" ;
	return $per;
}



