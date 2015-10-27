#!/usr/bin/perl

#2011_01_05_21:44:27 add by greshem, ֮����Ӷ��ڶ�CPU��֧��, SMP ������֧��.  
#2011_01_04_20:23:43 add by greshem

# /****************************************************************************
# * Description: ����ֻ�ǽ��� /proc/stat ��������. 	
# * @param 	
# * @return 	
# * *************************************************************************/
sub get_cpu_stat 
{ 
     my @stats;
     my $fh; 
     #Linux ϵͳ���� /proc/stat ����ȡ CPU ��Ϣ 
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
	# ���ݸ�ʽ������ʾ������ϸ����Ϣ��ο� proc �� manpage
   
	my $total=$stats[1] + $stats[2]+$stats[3] +$stats[4];
	my $idle=$stats[4];
     # ���ص�ǰ CPU �� total �� idle ʱ��Ƭ���� 
	return ($total, $idle);
}

# /****************************************************************************
# * Description: �����淵�ص� �������м��㣬 �ó�CPUռ����. 	
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
	print "cpu ռ����".$per."\n" ;
	return $per;
}


########################################################################
#mainloop
while(1)
{
	$usage=get_cpu_usage();
	print $usage,"\n";
}
