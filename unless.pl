#!/usr/bin/perl
for(1..100)
{
	unless ($_<20)
	{
	print $_."\n";
	} 
}

#和 下面的方式是等价的  是为了 想省略, do nothing 的代码. 
for(1..100)
{
	if($_>20)
	{
		#do nothing 
	}
	else
	{
	print $_."\n";
	}
}
