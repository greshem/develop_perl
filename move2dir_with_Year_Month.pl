#!/usr/bin/perl
#20100709
#mv 在shell 执行的保证mv 的正确性， 用 "/bin/delete_space_for_bash.pl " 删除文件以及目录， 和shell冲突的字符。 
#2010_08_09_23:21:30 add by qzj
#
#$time=timelocal($sec, $min, $hour, $mday, $mon, $year);
use POSIX qw(strftime);
use Time::Local;
	for $each  (<*>)

	{
	#	if(-f $each )
		if($each=~/_xfile_(\d\d\d\d)$/ && -d $each)
		{
			$time= timelocal(0, 0, 0, 1, 1, $1);
			utime $time, $time , $each;
		}
		if($each=~/_xfile_(\d\d\d\d)_(\d\d)$/ && -d $each)
		{
			$time= timelocal(0, 0, 0, 1, ($2 -1 ), $1);
			utime $time, $time , $each;
		}
		if($each=~/_xfile_(\d\d\d\d)_(\d\d)_(\d\d)$/ && -d $each)
		{
			$time= timelocal(0, 0, 0, $3, ($2 -1), $1);
			utime $time, $time , $each;
		}
		if($each=~/_xfile_(\d+)_(\d+)/)
		{
			
			#print "mv ",$each, "   _xfile_".$1."\n";
			print "#aa\n";
		}
		elsif( $each=~/_xfile_(\d+)/)
		{
			#print "mv ",$each, "   _xfile_".$1."\n";
			print "#bb\n";
		}
		else
		
		{
			$mtime=(stat($each))[9];
			$time=strftime("_xfile_%Y_%m", localtime($mtime));
			mkdir($time);
			print "mv ", $each, "\t", $time,"/\n";

		}
	}
