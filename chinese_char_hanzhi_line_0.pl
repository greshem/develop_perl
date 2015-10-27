#!/usr/bin/perl
$file = shift ;
@array;
if(! defined($file))
{
	@file=glob("*");
	if(scalar(@file)==0)
	{
		die("cur dir have not files\n");
	}
	@array=@file;
}
else
{
	open(FILE, $file) or die("Open file error\n");
	@array=(<FILE>);
}
for(@array)
{
	#ºº×ÖÐÐ
	if( /.*([\x80-\xff]+).*/  )
	{
		print $_,"\n";	
	}
	else
	{
		#print $_;
	}
}

