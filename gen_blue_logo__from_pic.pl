#!/usr/bin/perl

use GD;
use Image::Size;
$file=shift ;
if( -f $file)
{
	($width, $height) = imgsize($file);
}
else
{
#108 x 121
	$width=108;
	$height=121;
}

$im = new GD::Image($width, $height);

# allocate black -- this will be our background
$black = $im->colorAllocate(0, 0, 0);

# allocate white
$white = $im->colorAllocate(255, 255, 255);        

$ray=$im->colorAllocate(200, 200, 200);
#20100401. qianlong µÄÑÕÉ«£¬ À¶É«¡£ 
##67A8C8

$qianlong=$im->colorAllocate(0x67, 0xA8, 0xC8); 
# allocate red
$red =$im->colorAllocate(255, 0, 0);      

# allocate blue
$blue = $im->colorAllocate(0,0,255);


# Flood-fill the ellipse. Fill color is red, and will replace the
# black interior of the ellipse
$im->fill(50, 21, $qianlong);
($output,$suffix)=($file=~/(.*)\.(.*)/);
$output.="logo.jpg";
open(FILE, ">".$output) or die("open file error\n");
binmode FILE;

# print the image to stdout
print FILE $im->jpeg;
close(FILE);

