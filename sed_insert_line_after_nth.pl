#!/usr/bin/perl
#20100716. 
$pattern="logo.php";

$file=shift 		or die("Usage: pattern insertFIle\n");
#$insertFile=shift 	or die("Usage: pattern insertFIle\n");

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
	#pattern的 第四行. 插入这一行. 
	if($isOK==4)
	{
		
		print '<?php include("horn_menu.php");>';
		#open(INSERT, $insertFile) or die("insertFile \n");
		#foreach $each  (<INSERT>)
		#{
		#	print $each;
		#}
		#close(INSERT);
	}
}


