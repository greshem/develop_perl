#!/usr/bin/perl
#2010_07_27_18:19:49 add by qzj
use GD;
$string="qianzhongjie";
$png=shift or die("Usage: $0 file.png\n");
#my $im =  GD::Image->newFromPng( $png, 1);
my $im =  GD::Image->newFromPng( $png, 1);
#unlink($png);
my $width = 	$im->width;
my $height = 	$im->height;

$white=	$im->colorAllocate(255, 255, 255);
$black=	$im->colorAllocate(0, 0, 0);
$gray=$im->colorAllocate(200,200,200);
$DeepGray= $im->colorAllocate(150,150,150);


##
#�޸ķ�ʽһ ����ַ���.
#$startx=($width-length($string)*9)/2;
#$im->string(gdGiantFont,  $startx, int($height*$_)/5, $string , $black);

#�޸ķ�ʽ�� , ������
# �߽�Ŀ��
#$im->setThickness(10);
#$im->rectangle(0,0,$width-1,$height-1,$DeepGray);

#�޸ķ�ʽ��  ��Բ��
$im->setThickness(1);
#		(x, y, width, height, angle_start, angle_end);

for(0..10)
{
	$length= int(rand($width/2));
	$color= $im->colorAllocate(int(rand(255)), int(rand(255)), int(rand(255)) );

	$im->arc( int(rand($width)), int (rand($height)), $length, $length,  0,360, $color);
}



binmode(STDOUT);
open(FILE, ">".$png);
print FILE $im->png;
close(FILE);

