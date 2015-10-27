#!/usr/bin/perl
#2011_02_13_15:59:32 add by greshem
# 添加 mac  地址 的转换. 农林下的问题.   
#2011_02_11_13:23:20 add by greshem



kill_progs();

$append=shift or die("strace subject \n");

sub get_nwconn__comand_line($)
{
	($pid)=@_;
	#ps -lf  -p 1402
	open(FILE, "ps -lf -p $pid |") or die("open pipe error\n");
	for (<FILE>)
	{
		if($_=~/.*nwconn.*:(.*):.*/)
		{
			$mac=$1;
		}
	}
	return $mac;	
}
########################################################################
#mainloop 
#kill_straces();

#open(FILE, "ps -elf |") or die("pipe open error\n");
open(FILE, "ps -elf |") or die("pipe open error\n");

$log_path= "strace_log";
#mkdir ($log_path);
#chdir($log_path);
$self_pid=$$;

foreach  (<FILE>)
{
	
	#$append=undef;	

	if($_=~/nwconn.*50\.5c.*/)
	{
		#print $_;
		
	}
	else
	{next;}
	
	#4 S root      9177 20030  0  75   0 -   528 -      Feb14 ?        00:01:00 nwconn 48 0.0.0.2a:f0.7d.68.16.50.5c:40.10 SUPERVISOR     
	@array=split(/\s+/,  $_);
	#print @array;
	$name="strace_sf_back";

	$pid=$array[3];

#针对 open
#strace -v -f  -e trace=open -p  $pid  >> $name\_$pid\_$append.log  2>&1  &
	$output_name=$name."_".$pid."_".$append;
	$strace_log="strace_log/".$output_name.".log";
	#if( -f  "strace_log/strace_sf_back_9177_delete.log")
	if( -f  $strace_log)
	{
		print "#EEEEE".$strace_log."| Exist\n";
		warn("#EEEEE: $strace_log have exists, change it  \n");
	}
	else
	{
		print "#FFFF".$strace_log,"| not Exist\n";
		#print -s $strace_log."\n";
	}
 	$command =<<EOF
strace -s 4096  -v -p  $pid  > strace_log/$output_name.log  2>&1  &
EOF
;
	print $command;
	print "tcpdump ipx  -s 0  -w  pcap_win/$output_name.pcap & \n";
	print "./gen_core_file_from_pid.sh  $pid  $append & \n";
	print "echo  $append  >> notice.txt  & \n";
}

#print "will sleep 60\n";
#sleep(60);

#kill_straces();

sub kill_progs()
{
	system("pkill strace");
	system("pkill tcpdump");
}
