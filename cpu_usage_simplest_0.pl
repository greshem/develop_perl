#!/usr/bin/perl

#2011_01_11_11:48:07 add by greshem, �޸�ȥ����ɱ�����̵Ķ����� ֻ���cpu ������, �ο� /root/daemon_monitor/cpu_usage_perl.pl 
#2011_01_06_23:54:09 add by greshem, �����޸ĺ��ˣ�20����Ϊ�޶�. 20����Ϊ�޶�.  
#2011_01_04_18:13:49 add by greshem , ���� cpan ��perl ռ����̫�ߵ�����. 

use POSIX 'strftime';

setpgrp;

while ( 1==1 )
{
	#print "Round ".$round."\n";
	$usage=get_cpu_usage();
	print "cput ������". $usage,"\n";
	$round++;
}


# /****************************************************************************
# * Description: ����ֻ�ǽ��� /proc/stat ��������. 	
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
	sleep 3;
	my ($t2, $i2)=get_cpu_stat();

	my $total=$t2-$t1;
	my $idle= $i2-$i1;
	my $per = 100*($total -$idle ) /$total;
	#print "cpu ռ����".$per."\n" ;
	return $per;
}



