use Cwd;
use POSIX 'strftime';


sub getTodayWeekday()
{
    my $today;

	if($^O=~/win/i)
	{
		$today=POSIX::strftime('%Y-%m-%d-%H:%M:%S_%A',localtime(time()));

	}
	else
	{
		$today =POSIX::strftime('%Y-%m-%d_%T_%A',localtime(time()));
	}

    return $today;
}

print getTodayWeekday()."\n";;
