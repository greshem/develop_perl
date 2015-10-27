#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
#2011_02_24 add by greshem

########################################################################
#mainloop 

if [ !  $# -eq 2 ];then
	echo "Usage: ", $0  "    input_file  pattern ";
	exit 
fi

in=$1;
pattern=$2;

#echo  print_after_matched_line.sh

#sed -ne  '/pattern/,${p}'  $in 
 sed -ne  "/^$pattern/,\${p}"  $in 



