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
	sed 's/void main(/int main(/g'  $each; 
done
for each in $(find -type f -name \*.CPP); 
do 
	sed 's/void main(/int main(/g'  $each -i ; 
done


