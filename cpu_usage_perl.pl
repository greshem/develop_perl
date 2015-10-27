#!/usr/bin/perl

#2011_01_05_21:44:27 add by greshem, 之后添加对于多CPU的支持, SMP 机器的支持.  
#2011_01_04_20:23:43 add by greshem

# /****************************************************************************
# * Description: 任务只是解析 /proc/stat 不做计算. 	
# * @param 	
# * @return 	
# * *************************************************************************/
sub get_cpu_stat 
{ 
     my @stats;
     my $fh; 
     #Linux 系统，从 /proc/stat 来获取 CPU 信息 
	open($fh, "cat  /proc/stat | ")  or die "$!";
	while(<$fh>)
	{ 
         #get the cpu stat 
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
	print "sleep 5 second\n";
	sleep 5;
	my ($t2, $i2)=get_cpu_stat();

	my $total=$t2-$t1;
	my $idle= $i2-$i1;
	my $per = 100*($total -$idle ) /$total;
	print "cpu 占用率".$per."\n" ;
	return $per;
}


########################################################################
#mainloop
while(1)
{
	$usage=get_cpu_usage();
	print $usage,"\n";
}
