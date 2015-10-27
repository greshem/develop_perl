#!/usr/bin/perl
#20100724
#qzj, 默认 会  收集  ./目录下 png 的图片， 里面 产品图片的xy , 然后集中暂时这些图片, 生成这些图片的table页面。 
use Image::Size;

%hash;
$globalX;
$globalY;

	
	@array=glob("*.png");
	foreach (@array)
	{
		#chomp;
		#print $_,"\n";;
		($imgx, $imgy)=imgsize($_);	
		$sizeStr=$imgx."_".$imgy;
		$hash{$sizeStr}++;
	}

foreach (keys(%hash))
{
	if($hash{$_}>20)
	{
		#print "产品图片大小 ",$_,"->", $hash{$_},"\n"; 
		($globalX,$globalY)=($_=~/(\d+)_(\d+)/);
	}
}
print stderr  "#$globalX".x."$globalY\n";
foreach (glob("*png"))
{
	($x,$y)=imgsize($_);
	if( !($x==$globalX && $y==$globalY))
	{
		next;;	
	}
	print $_,"\n";
}

