#!/usr/bin/perl
#20100724
#qzj, Ĭ�� ��  �ռ�  images/Ŀ¼�� png ��ͼƬ�� ���� ��ƷͼƬ��xy , Ȼ������ʱ��ЩͼƬ, ������ЩͼƬ��tableҳ�档 
use Image::Size;

%hash;
$globalX;
$globalY;
if(! -d "images")
{
	die("images not dir\n");
}
else
{
	
	@array=glob("images/*.png");
	foreach (@array)
	{
		#chomp;
		#print $_,"\n";;
		($imgx, $imgy)=imgsize($_);	
		$sizeStr=$imgx."_".$imgy;
		$hash{$sizeStr}++;
	}
}

foreach (keys(%hash))
{
	if($hash{$_}>20)
	{
		#print "��ƷͼƬ��С ",$_,"->", $hash{$_},"\n"; 
		($globalX,$globalY)=($_=~/(\d+)_(\d+)/);
	}
}
#########guess  images Ŀ¼����Ĵ�С�� 
print "<table >\n";
$i=0;
foreach (glob("images/*png"))
{
	($x,$y)=imgsize($_);
	if( !($x==$globalX && $y==$globalY))
	{
		next;;	
	}
	if($i>=16)
	{
		last;
	}
	$j=$i%4;
	if($j==0)
	{
		print "<tr>\n";
		print "\t<td><img src=".$_."></img></td>\n"
	}
	elsif($j==1 || $j==2)
	{
		print "\t<td><img src=".$_."></img></td>\n"; 
	}
	elsif ($j==3)
	{
		print "\t<td><img src=".$_."></img></td>";
		print "</tr>\n"
	}	
	$i++;
}
print "</table>";
