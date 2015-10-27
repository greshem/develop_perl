#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
for each in $(find -type f -name \*.c); 
do 
echo 	sed '/#include.*unp.h/{s/.*/#include <unp.h>/g}'  -i $each; 
	sed '/#include.*unp.h/{s/.*/#include <unp.h>/g}'  -i $each; 
#echo 	sed '/#include.*unp.h/{s/.*/#include<unp.h>/g}'  -i $each; 
done
# for each in $(find -type f -name \*.CPP); 
# do 
# 	sed '/include \"{s/^/\/\//g}'  -i $each; 
# done


