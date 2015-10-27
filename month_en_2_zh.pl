#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
file=$1   
sed -i 's/January/1月/'   $file
sed -i 's/February/2月/'   $file
sed -i 's/March/3月/'   $file
sed -i 's/April/4月/'   $file
sed -i 's/May/5月/'   $file
sed -i 's/June/6月/'   $file
sed -i 's/July/7月/'   $file
sed -i 's/August/8月/'   $file
sed -i 's/September/9月/'   $file
sed -i 's/October/10月/'   $file
sed -i 's/November/11月/'   $file
sed -i 's/December/12月/'   $file

