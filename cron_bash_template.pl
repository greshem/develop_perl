#!/usr/bin/perl


$name=shift or die("Usage: $0 name \n");

########################################################################
#ʱ��. 
use POSIX 'strftime';
$cur_time=POSIX::strftime('%Y-%m-%d-%T',localtime(time()));
#���: nowTime -> 2011-01-05-23:30:05

$today=POSIX::strftime('%Y-%m-%d',localtime(time()));
##���: Today -> 2011-01-05

open(OUTPUT, ">".$name.".sh");
print OUTPUT  "\#".$cur_time." add by greshem\n";
foreach (<DATA>)
{
	if(/PATTERN/)
	{
		$_=~s/PATTERN/$name/;
	}
	else
	{
	}
	print OUTPUT  $_;
}
close(OUTPUT);
__DATA__
#!/bin/bash
logfile="/var/log/PATTERN.log"
echo "PATTERN��־. " $(/bin/getTodayTime.sh) >> $logfile

