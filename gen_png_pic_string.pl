#!/usr/bin/perl

use GD;
$width=shift or die("Usage: $0  width  height\n");
$height= shift or die("usage: $0  width  height\n");

$im = new GD::Image($width, $height);

# allocate black -- this will be our background
$black = $im->colorAllocate(0, 0, 0);

# allocate white
$white = $im->colorAllocate(255, 255, 255);        
$ray=$im->colorAllocate(200, 200, 200);
# allocate red
$red =$im->colorAllocate(255, 0, 0);      

# allocate blue
$blue = $im->colorAllocate(0,0,255);

#Inscribe an ellipse in the image
#$im->arc(50, 25, 98, 48, 0, 360, $white);

# Flood-fill the ellipse. Fill color is red, and will replace the
# black interior of the ellipse
$im->fill(50, 21, $ray);
$font= GD::Font->load("/bin/simsun") or die("font load failue $!\n");
$im->string($font,2,10,"Peachy Keen",$red);

open(FILE, ">".$width."_".$height.".png") or die("open file error\n");
binmode FILE;

# print the image to stdout
print FILE $im->png;
close(FILE);

