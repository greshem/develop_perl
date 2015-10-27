#!/usr/bin/perl
use Encode;
use GD;
use GD::Image;

$im = new GD::Image(800,800);

$white = $im->colorAllocate(255,255,255);
$black = $im->colorAllocate(0,0,0);
$red = $im->colorAllocate(255,0,0);
$blue = $im->colorAllocate(0,0,255);

#make the background transparent and interlaced
$im->transparent($blue);
$im->interlaced('true');

#д����  
$buf=decode("gb2312","������������");
$im->stringFT($black,"/bin/simsun",10,0,50,50,$buf,{charmap => 'Unicode',});

#����ͼƬ�ļ�
open(FILE,">/tmp/chinese_str.gif") or die("Open png file error\n");
binmode FILE;
print FILE $im->gif();
close FILE;

