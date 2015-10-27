#!/usr/bin/perl
#2011_01_24_13:04:17 add by greshem
open(FILE, "ps -el |") or die("pipe open error\n");

$log_path= "strace_log";
mkdir ($log_path);
chdir($log_path);
$self_pid=$$;

foreach  (<FILE>)
{
	@array=split(/\s+/, $_);
	$pid=$array[3];
	$name=$array[$#array];
	#print "pid=",$pid,"\t", "name=", $name,"\n";
	
 	$command =<<EOF
strace -f  -e trace=open -p  $pid  >> $name.log  2>&1  &
EOF
;
	print $command;
	if( $pid eq $self_pid)
	{
		print "ERROR 不对自身， 进行strace \n";
		next;
	}
	if( $name eq "strace")
	{
		print "ERROR 不对strace , 进行strace \n";
		next;
	}

	system($command);
}

print "will sleep 60\n";
sleep(60);

kill_straces();

sub kill_straces()
{
	system("pkill strace");
}
