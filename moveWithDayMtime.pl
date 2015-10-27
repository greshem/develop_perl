#!/usr/bin/perl
for(<*>)
{
	if(-d $_ || -f $_ )#|| -d $_) 
	{
		$suffix=getSuffix($_);
		if(defined $suffix)
		{
#			print $_," --> ", $suffix ,"\n";	
			
				print "mv ",  $_, "\t", $_."_".$suffix,"\n";
			
		}
		else
		{
			print $_," 无法分类\n";
		}
	}
}
sub getSuffix()
{
	use POSIX qw(strftime);
	($in)=@_;
	$time = strftime("%Y%m%d", localtime((stat($in))[9]));
	return $time;
}
