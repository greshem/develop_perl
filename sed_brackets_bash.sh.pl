#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash

#2010_12_28_15:42:00 add by greshem
sed "s/)/ /g"  tmp2 -i 
sed 's/(/ /g'  tmp2 -i 
########################################################################
#ERROR
sed "s/\)/ /g"  tmp2 -i 
sed 's/\(/ /g'  tmp2 -i 


