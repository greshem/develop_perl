#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
#include <wx/wx.h> 
#2011_02_09_17:34:09 add by greshem
for each in $(find $(pwd) |grep txt)
do
sed   '^ANSI a  //##########################################################################################'  $each
done
//int main()

