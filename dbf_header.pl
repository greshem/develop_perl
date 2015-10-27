#!/usr/bin/perl
#int  dump_lock_flag(char *filename)
$in=shift or die("usage: $0 file.dbf\n");


while(1)
{
	$length=length(pack("Z14CZ17"));
	open(FILE, $in) or die("open file error $!\n");
	$ret=sysread(FILE, $a, $length);
	#print $ret,"\n";
	(undef, $bit, undef)=unpack( "Z14cZ17", $a);
	print $bit,"\n";
	close(FILE);
	sleep(1);
}
