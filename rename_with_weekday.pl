#!/usr/bin/perl
#进一步可以参考.
#J:\sdb1\_xfile\2014_all_iso\_xfile_2014_08\_pre_cache\__pre_cache_before_2013\_xfile_2009\weekday_rename_2009.pl 
use DateTime::Format::Strptime;
my $Strp = new DateTime::Format::Strptime(
                                       pattern     => '%y %m %d %T',
                                       locale      => 'en_AU',
                                       time_zone   => 'Australia/Melbourne',
                               );

         $Strp->parse_datetime('10 01 01 15:20:19');

         $Strp->format_datetime();

#==========================================================================
#
use Time::Local;
use POSIX qw(strftime);
#$time=timelocal($sec, $min, $hour, $mday, $mon, $year);
#$time=timegm($sec, $min, $hour, $mday, $mon, $year);

#$time=timelocal  (0, 0, 0, 30, 1 , 2013); 
#$time=timelocal(0, 0, 0, 1, 0 , 2012); #1356969600
