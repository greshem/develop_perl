#!/usr/bin/perl
#2007 08 09 号.
#month 偏移差1.
my $year=2007;
my $month=7;
my $day=9;

use Time::Local;
use POSIX qw(strftime);
$time=timelocal($sec, $min, $hour, $day, $month, $year);
#$time=timegm($sec, $min, $hour, $mday, $mon, $year);
#$time=timelocal(0, 0, 0, 1, 1, 1988);

#20070809
print strftime("%Y%m%d\n", localtime($time));
print strftime("%Y-%m-%d\n", localtime($time));
print strftime("%Y/%m/%d\n", localtime($time));
print strftime("%Y_%m_%d\n", localtime($time));
print strftime("%Y:%m:%d\n", localtime($time));

#200708 9
print strftime("%Y%m%e\n", localtime($time));
print strftime("%Y-%m-%e\n", localtime($time));
print strftime("%Y/%m/%e\n", localtime($time));
print strftime("%Y_%m_%e\n", localtime($time));
print strftime("%Y:%m:%e\n", localtime($time));


#==========================================================================

#070809
print strftime("%y%m%d\n", localtime($time));
print strftime("%y-%m-%d\n", localtime($time));
print strftime("%y_%m_%d\n", localtime($time));
print strftime("%y:%m:%d\n", localtime($time));

#09/01/08
print strftime("%D\n", localtime($time));

#2007-08-09
print strftime("%F\n", localtime($time));


#2007
print strftime("%G\n", localtime($time));

#07
print strftime("%g\n", localtime($time));


#%s     The number of seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC)
#1186588800
print strftime("%s\n", localtime($time));

#不要年份了.
print strftime("%m%d\n", localtime($time));
print strftime("%m-%d\n", localtime($time));
print strftime("%m_%d\n", localtime($time));
print strftime("%m:%d\n", localtime($time));
print strftime("%m/%d\n", localtime($time));


#2007年08月09日 星期一 00时00分00秒
#print strftime("%c\n", localtime($time));

