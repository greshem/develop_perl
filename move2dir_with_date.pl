#!/usr/bin/perl
#20100709
#mv 在shell 执行的保证mv 的正确性， 用 "/bin/delete_space_for_bash.pl " 删除文件以及目录， 和shell冲突的字符。 
use POSIX qw(strftime);
	for $each  (<*>)

	{
	#	if(-f $each )
		if($each!~/_xfile/)
		{
			$mtime=(stat($each))[9];
			$time=strftime("_xfile_%Y_%m_%d", localtime($mtime));
			mkdir($time);
			print "mv ", $each, "\t", $time,"\n";
		}
	}
