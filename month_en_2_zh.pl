#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
file=$1   
sed -i 's/January/1��/'   $file
sed -i 's/February/2��/'   $file
sed -i 's/March/3��/'   $file
sed -i 's/April/4��/'   $file
sed -i 's/May/5��/'   $file
sed -i 's/June/6��/'   $file
sed -i 's/July/7��/'   $file
sed -i 's/August/8��/'   $file
sed -i 's/September/9��/'   $file
sed -i 's/October/10��/'   $file
sed -i 's/November/11��/'   $file
sed -i 's/December/12��/'   $file

