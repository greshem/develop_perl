#!/usr/bin/perl

foreach (glob("*"))
{
	#utime rand(time()), rand(time()), $_;
	if(-d $_)
	{
		next;
	}
	if( ( time() - (stat($_))[9] ) > 3600*24*160 )
	{
		#utime rand(time()), rand(time()), $_;
		utime time(), time() , $_;
		print  "utime to current $_ \n";
	}
}
