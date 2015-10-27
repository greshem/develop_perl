#!/usr/bin/perl
use POSIX 'strftime';


$SIG{TERM}=$SIG{INT}=\&yoursub;

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

for($i=0 ;$i < 10; $i++)
{
#	close($i);
}

setpgrp;


my$i=1;
while(1)
{
	sleep1;
	$i=$i+1;
	sleep(1);
	print$i."\n";
}

sub yoursub
{
	print" exit ... \n";
	exit 0;
}

