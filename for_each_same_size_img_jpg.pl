#!/usr/bin/perl
#20100724
#qzj, Ĭ�� ��  �ռ�  ./Ŀ¼�� png ��ͼƬ�� ���� ��ƷͼƬ��xy , Ȼ������ʱ��ЩͼƬ, ������ЩͼƬ��tableҳ�档 
use Image::Size;

%hash;
$globalX;
$globalY;

	
	@array=glob("*.jpg");
	if(scalar(@array)==0)
	{
		die("current dir have no png files\n");
	}
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
		#print "��ƷͼƬ��С ",$_,"->", $hash{$_},"\n"; 
		($globalX,$globalY)=($_=~/(\d+)_(\d+)/);
	}
}
print stderr  "#$globalX".x."$globalY\n";
foreach (glob("*jpg"))
{
	($x,$y)=imgsize($_);
	if( !($x==$globalX && $y==$globalY))
	{
		next;;	
	}
	print $_,"\n";
}

