#!/usr/bin/perl
while(1)
{
	open(PIPE, "zcat  /tmp/etc.tar.gz  |") or die("creat pipe file error $!\n");
	for(<PIPE>)
	{
	}
	#close(PIPE);
}
