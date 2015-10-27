#!/usr/bin/perl
$file = shift or die("Usage: $0 file.txt\n");
open(FILE, $file) or die("Open file error\n");
for(<FILE>)
{
	#ºº×ÖÐÐ
	if( /.*([\x80-\xff]+).*/  )
	{
		
	}
	else
	{
		print $_;
	}
}

