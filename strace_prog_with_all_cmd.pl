#!/usr/bin/perl
#2011_03_01_22:36:57   星期二   add by greshem
#通用的程序程序. 

#$pattern="nwconn.*50\.5c.*";
$pattern=shift or die("$0  prog_pattern \n");
mkdir("pcap_win/");
mkdir("strace_log/");

#kill_progs();

#$append=shift or die("strace subject \n");

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
	

	if($_=~/$pattern/)
	{
		#print $_;
		print "########################################################################\n";
	}
	else
	{next;}
	
	#4 S root      9177 20030  0  75   0 -   528 -      Feb14 ?        00:01:00 nwconn 48 0.0.0.2a:f0.7d.68.16.50.5c:40.10 SUPERVISOR     
	@array=split(/\s+/,  $_);
	print "#".join("\t|", @array)."\n";
	#$name="strace_sf_back";
	$name=$array[14];
	$name=~s/\//_/g;

	$pid=$array[3];

	$output_name=$name."_".$pid."_".$append;
	$strace_log="strace_log/".$output_name.".log";
	#if( -f  "strace_log/strace_sf_back_9177_delete.log")
	if( -f  $strace_log)
	{
	}
	else
	{
		print "#FFFF".$strace_log,"| not Exist\n";
		#print -s $strace_log."\n";
	}
	########################################################################
	#命令打印区.
	#针对 open
	#strace -v -f  -e trace=open -p  $pid  >> $name\_$pid\_$append.log  2>&1  &

 	$command =<<EOF
#strace -s 4096  -v -p  $pid  > strace_log/$output_name.log  2>&1  &
strace -s 4096  -v -p  $pid 
strace  -p  $pid 
strace -v -f  -e trace=open,close,unlink -p  $pid
strace -v -f  -e trace=file -p  $pid
strace -p \$(pgrep $name);
EOF
;
	print $command;
	print "tcpdump ipx  -s 0  -w  pcap_win/$output_name.pcap & \n";
	print "./gen_core_file_from_pid.sh  $pid  $append & \n";
	print "gdb --pid $pid\n"	;
	print "ltrace -p $pid\n";
	#print "echo  $append  >> notice.txt  & \n";
}

#print "will sleep 60\n";
#sleep(60);

#kill_straces();

sub kill_progs()
{
	system("pkill strace");
	system("pkill tcpdump");
}
