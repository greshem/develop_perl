#!/usr/bin/perl
open(FILE,"$ARGV[0]") or die("open file error\n");
#local($/);
#$file=<FILE>;

#while($file=~/(\S+)\s*\((.*)\)\s*\{.*\}/)
#这个是定义的.
#while($file=~/(\S*)\s+(\S+)\s*\((.*)\)\s+\{/g)
#调用的函数.
while(<FILE>)
{
	if($_=~/\(.*\)/g || $_=~/\(.*/g )
	{
		if($_!~/if|while|for|switch/)
		{
		print $_;
		}
	}

}
# while($file=~/\(.*\)/g)
# {
# 	print $file,"\n";
# 	#if($1!~/if|while|for|switch/)
# 	{
# 	#print "$1 $2( $3 ) \n";
# 		print "$file ";
# 	}
# }
