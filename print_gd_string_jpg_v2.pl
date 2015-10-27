#!/usr/bin/perl -w

#2010_07_27_15:54:59 add by qzj
#gdGiantFont ,   这个字体。 
#这里最大的字体，每一个字符是 9 个像素， 根据这个信息调整 str 的打印的位置。 
#use strict;
use GD;
use subs qw( charmap );
$string=shift or die("Usage: $0 string\n");
$width=152;
$height=136;
#srandom();
my $teststring = pack 'C*', 32, 1 .. 255;
my $im = new GD::Image($width, $height);
my ($white, $black) = 
(
	$im->colorAllocate(255, 255, 255),
	$im->colorAllocate(0, 0, 0),
);
$gray=$im->colorAllocate(200,200,200);

#$im->transparent($white);
$im->interlaced(1);
$im->fill(50,50,$gray);
#$im->string(gdGiantFont,  $width/3, $height*2/5, $string , $black);
#调整器， 上面的字体的大小是 9 像素。
$startx=($width-length($string)*9)/2;
$im->string(gdGiantFont,  $startx, $height*2/5, $string , $black);

binmode(STDOUT);
#open(FILE, ">".substr($string,0,10).".png");
open(FILE, ">".$string.".jpg");
print FILE $im->jpeg;
close(FILE);
######################################################
#2010_07_27_15:57:01 add by qzj
# 打印字符符号
#$charmap($im, gdGiantFont, "GiantFont 9x15", 20, 16);
#charmap($im, gdLargeFont, "LargeFont 8x16", 120, 16);
#charmap($im, gdMediumBoldFont, "gdMediumBoldFont 7x13b", 220, 13);
#charmap($im, gdSmallFont, "gdSmallFont 6x13", 320, 13);
#charmap($im, gdTinyFont, "gdTinyFont 5x8", 420, 8);
#$im->string(gdTinyFont,  100,200,"linux", $black);
#
#sub charmap
#	{
#	my $im = shift;
#	my ($font, $title, $topoffset, $lineskip) = @_;
#
#	$im->string($font, 16, $topoffset, $title.':', $black);	
#	my $line;
#	for $line (0 .. 4)
#		{
#		$im->string($font, 16, $topoffset + (1 + $line) * $lineskip,
#			substr($teststring, $line * 64, 64), $black);	
#		}
#	}
#
