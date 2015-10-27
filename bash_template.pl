#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
#argv
echo $@
#argc 
if [ !  $# -eq 1 ];then
	echo "Usage: ", $0 , "file.list";
	exit 
fi
list=$1;
for each in $(cat $list  ); 
do 
	echo echo $each;  
	echo p $each; 
done 

