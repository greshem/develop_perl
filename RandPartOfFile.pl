#!/usr/bin/perl
#返回 txt 文件的任意区间。 
$file=shift;
open(FILE, $file) or die("Open file error\n");
@array=(<FILE>);

$start;
$end;

$a=int(rand($#array));
$b=int(rand($#array));
if($a< $b)
{
	$start=$a;
	$end  =$b;
}
else
{
	$start=$b;
	$end  =$a;
}

for($i=$start; $i<=$end; $i++)
{
	print $array[$i];
}

