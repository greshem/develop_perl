#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
#2011_02_09_17:34:09 add by greshem
for each in $(find $(pwd) |grep cpp)
do
if ! grep "<wx/wx.h>" $each ;then
	 sed -i  '1 a  #include <wx/wx.h> '  $each
	echo sed -i  '1 a  #include <wx/wx.h> '  $each
fi
done

