#!/usr/bin/perl
# /usr/share/perl5/Time/Local.pm 
#Time::Local::timegm

use Time::Local;
use POSIX qw(strftime);
#$time=timelocal($sec, $min, $hour, $mday, $mon, $year);
#$time=timegm($sec, $min, $hour, $mday, $mon, $year);

#$time=timelocal  (0, 0, 0, 30, 1 , 2013); 
$time=timelocal(0, 0, 0, 1, 0 , 2013); #1356969600
print $time;

for ($i=0;$i<=365;$i++)
{
	$time= 1356969600 + 24*60*60*$i;
		
	print strftime("%Y_%m_%d\n", localtime($time));
	

}

sub test()
{
for $month(0..11)
{
	for $day (1..31)
	{
		$time=timelocal(0, 0, 0, $day, $month , 2013);
		#$time=timelocal_nocheck  (0, 0, 0, $day, $month , 2013);

		print strftime("%Y_%m_%d\n", localtime($time));

	}
}

}
