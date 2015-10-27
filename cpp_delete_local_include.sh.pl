#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
for each in $(find -type f -name \*.cpp); 
do 
	sed '/#include \"/{s/^/\/\//g}'  -i $each; 
done
for each in $(find -type f -name \*.CPP); 
do 
	sed '/include \"{s/^/\/\//g}'  -i $each; 
done


