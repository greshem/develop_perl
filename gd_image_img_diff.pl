#!/usr/bin/perl
#2010_07_27_18:19:49 add by qzj
#参考之前的  root 的  php_motion_detect 项目. 
use strict;
use GD;

my $png1=shift or die("Usage: $0 file.png  file1.png\n");
my $png2=shift or die("Usage: $0 file.png  file1.png\n");
#my $im =  GD::Image->newFromPng( $png, 1);
my $im1 =  GD::Image->newFromPng( $png1, 1);
my $im2=   GD::Image->newFromPng( $png2, 1);

my $width1 = 	$im1->width;
my $height1 = 	$im1->height;

my $width2 = 	$im2->width;
my $height2 = 	$im2->height;


my $diff=0;
for (my $ix = 1; $ix <= $width1; $ix++) 
{
	for (my $iy = 1; $iy <= $height1; $iy++) 
	{
		#print "#####x=$ix, y=$iy \n";
		my $index1 = $im1->getPixel($ix,$iy);
		(my $r,my $g,my $b) = $im1->rgb($index1);
		#print "r=$g, g=$g, b=$b\n";
		my $ligntness= $r+$g+$b;

		my $index2 = $im2->getPixel($ix,$iy);
		(my $r1,my $g1,my $b1) = $im2->rgb($index2);
		#print "r1=$r1, g1=$g1, b=$b1\n";
		my $ligntness2= $r1+$g1+$b1;
	
		$diff+=$ligntness - $ligntness2;
		my $tmp=$ligntness - $ligntness2;
		if($tmp != 0)
		{
			#print "x=$ix, y=$iy, tmp=$tmp\n";
		}
		
		#$diff=$diff 

	}
}

		print abs($diff)."\n";

#227676, 经验值, win2003 的安装界面的差异. 
if(abs($diff) < 300000)
{
	exit(0 );
}
else
{
	exit(1 );
}


#             GD_CMP_IMAGE             The two images look different
#             GD_CMP_NUM_COLORS        The two images have different numbers of colors
#             GD_CMP_COLOR             The two images' palettes differ
#             GD_CMP_SIZE_X            The two images differ in the horizontal dimension
#             GD_CMP_SIZE_Y            The two images differ in the vertical dimension
#             GD_CMP_TRANSPARENT       The two images have different transparency
#             GD_CMP_BACKGROUND        The two images have different background colors
#             GD_CMP_INTERLACE         The two images differ in their interlace
#             GD_CMP_TRUECOLOR         The two images are not both true color

#my $flag = $im->compare($im2);
# if ($im->compare($im2) & GD_CMP_IMAGE) 
# {
# 	warn "images differ!\n";
# }
# else
# {
# 	warn "images same!\n";
# }







#==========================================================================
__DATA__
  $colorsTotal = $image->colorsTotal object method
           This returns the total number of colors allocated in the object.


  $index = $image->getPixel(x,y) object method
           This returns the color table index underneath the specified point.  It can be combined with rgb() to obtain the rgb
           color underneath the pixel.

           Example:

                   $index = $myImage->getPixel(20,100);
                   ($r,$g,$b) = $myImage->rgb($index);

#==========================================================================
       ($red,$green,$blue) = $image->rgb($index)
           This returns a list containing the red, green and blue components of the specified color index.

           Example:

                   @RGB = $myImage->rgb($peachy);

#==========================================================================

 $flag = $image1->compare($image2)
           Compare two images and return a bitmap describing the differences found, if any.  The return value must be logically
           ANDed with one or more constants in order to determine the differences.  The following constants are available:

             GD_CMP_IMAGE             The two images look different
             GD_CMP_NUM_COLORS        The two images have different numbers of colors
             GD_CMP_COLOR             The two images' palettes differ
             GD_CMP_SIZE_X            The two images differ in the horizontal dimension
             GD_CMP_SIZE_Y            The two images differ in the vertical dimension
             GD_CMP_TRANSPARENT       The two images have different transparency
             GD_CMP_BACKGROUND        The two images have different background colors
             GD_CMP_INTERLACE         The two images differ in their interlace
             GD_CMP_TRUECOLOR         The two images are not both true color
