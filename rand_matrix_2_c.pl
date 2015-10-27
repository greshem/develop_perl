#!/usr/bin/perl
$len=10;
$name=undef;
$output=undef;
if(grep {"/del"} @ARGV)
{
	foreach (a..z)
	{
		if( -f $_.".cpp")
		{
			unlink($_.".cpp");
		}
	}

}
foreach (a..z)
{
	if( ! -f $_.".cpp")
	{
		$name=$_;
		$output=$_.".cpp";
		last;
	}
}

print "OUTPUT File: " ,$output, "\n";
open(FILE , ">".$output) or die("create file error $!");
select(FILE);
print "double ".$name."[".$len."][".$len."]={\n";
foreach $b (1..$len)
{
	#print  $b;	
	print "{";	
	foreach $c (1..$len)
	{
		print  int(rand($len)).",";
	}
	print "}, \n";
}
print "}; \n";
	
