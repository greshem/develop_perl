#!/usr/bin/perl
$HZ=100;
########################################################################
#获取程序是从系统启动之后的多少秒启动的. 
#秒数, 注意是区间. 
#1 (init) S 0 1 1 0 -1 4202752 3154 169252306 16 12249 9 72 591476 124595 20 0 1 0 1 19689472 303 18446744073709551615 4194304 4320582 140733849332800 140733849331880 217054027843 0 0 4096 536962595 18446744071579955955 0 0 0 2 0 0 61 0 0
sub get_time_span_after_boot($)
{
	(my $pid)=@_;
	$file= "/proc/$pid/stat";
	open(FILE,  $file ) or die("Open file error $file\n");
	for(<FILE>)
	{
		if($_=~/$pid.*\(.*\)/)
		{
			@array=split(/\s+/, $_);
			#print $array[21];
			#是这个文件的第21个列. 以空格为限.  
			$proc_span_after_boot= $array[21]/$HZ;
			return  $proc_span_after_boot
		}
	}
	return undef;
}

########################################################################
#系统启动多少秒了 和 1970年 进行比较. 
#btime 1307004856
sub get_sys_boot_time()
{
	my $file="/proc/stat";
	open(FILE, $file) or die("Open file $file error\n");
	for(<FILE>)
	{
		if(/^btime\s+(\S+)/)
		{
			my $time_sys_boot=$1;
			return  $time_sys_boot;
		}
	}
	return undef;
}
########################################################################
#程序活动多少时间了. 
sub get_alive_time($)
{
	(my $pid)=@_;
	$time_now= time();
	$time_sys_boot= get_sys_boot_time();
	$time_span_after_boot= get_time_span_after_boot($pid) ;
	#printf("程序  $pid 是 系统起来 $time_span_after_boot 秒之后启动的\n");
	$alive_time= $time_now - $time_sys_boot -  $time_span_after_boot ;
	return $alive_time;
}
########################################################################
#mainloop
my $pid=shift;
if(!defined($pid))
{
	$pid=1;
}
while(1)
{
	print "#########\n";
	$alive_time=get_alive_time( $pid );
	print  " pid= $pid 程序已经运行 ".$alive_time."秒\n";
	sleep(1);
}
