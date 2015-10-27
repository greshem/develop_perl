#!/usr/bin/perl
$html=shift or die("Usage: $0 in.html\n");
$inbody=undef;

open(FILE, $html) or die("open file error\n");
foreach(<FILE>)
{
	
	if(/<\/body/i)
	{
		$inbody=undef;
	}
	if($inbody)
	{
		print $_;
	}
	
	if(/<body/i)
	{
		$inbody=1;
	}
}
