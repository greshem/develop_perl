#!/usr/bin/perl
#2011_02_09_17:03:45 add by greshem
use POSIX qw(strftime);
$file=$ARGV[0] or die("$0 filename \n");
if($file!~/sh$/)
{
	$file.=".sh";
}
$time=strftime("%Y_%m_%d", localtime(time()));
print $time;
open(FILE,">".$file) or die("open file error $!\n");
while(<DATA>)
{
	if(/__TEMPLATE__/)
	{
		$_=~s/__TEMPLATE__/$file/g;
		print FILE $_;
	}
	elsif(/__TIME__/)
	{
		$_=~s/__TIME__/$time/g;
		print FILE $_;
	}
	else
	{
		print FILE $_;
	}
}
close(FILE);
chmod (0776, $file);

__DATA__
#!/bin/bash
#__TIME__ add by greshem

foo ()
{
	$in=$1;
	for each in $(cat $in  ); 
	do 
		 echo $each;  
	done 
}
########################################################################
#mainloop 

if [ !  $# -eq 1 ];then
	echo "Usage: ", $0  "    input";
	exit 
fi

in=$1;

echo  __TEMPLATE__
foo $in;


