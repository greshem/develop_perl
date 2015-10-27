#!/usr/bin/perl

#$hosts_to_backup = `cat /etc/hosts | fping -a`;
$hosts_to_backup = `cat /etc/hosts | fping -A`;
foreach $line (split(/\n/,$hosts_to_backup)) 
{
	#172.16.8.60 is unreachable
	#172.30.52.11 is alive
	#if($line=/(\d+\.\d+\.\d+\.\d+)\s+is\s+unreachable/)
	if($line=~s/\s+is\s+unreachable//)
	{	
		#print $line."\n";
		print "sed  '/$line/{s/^/#/}'  /etc/hosts -i \n";
	}
}


