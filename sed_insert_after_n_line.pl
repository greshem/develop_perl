#!/usr/bin/perl
$pattern="logo.php";
$file=shift;
open(FILE, $file) or die("open file error\n");
$isOK=undef;

foreach (<FILE>)
{
	if($_=~/$pattern/)
	{
		$isOK=0;
	}
	if(defined($isOK) )
	{
		$isOK++;
	}
	print $_;
	if($isOK==4)
	{
		print("#####################################\n");
		print("#####################################\n");
		print("#####################################\n");
		print("#####################################\n");
		print("#####################################\n");
		print("#####################################\n");
	}
}


