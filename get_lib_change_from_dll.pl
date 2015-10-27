#!/usr/bin/perl
for $each  (glob("*.asm"))
{
	#print $each;
	$count=count_dll($each);
	#print "\t".$count."\n";
	if($count <  10)
	{
		print $each."\n";
	}
}

sub count_dll($)
{
	($file)=@_;
	$count=0;
	open(FILE, $file) or die("open file error\n");
	for (<FILE>)
	{
		if($_=~/dll\/|DLL\//)
		{
			$count++;
		}
	}
	return $count;
}

