#!/usr/bin/perl
#2011_01_25_10:56:20 add by greshem
#genOneFrame 的概念不清楚. 
#文件里面的分片的内容可以确定出来的， 同样也可以根据， 分片的内容， 定位出 分片的 偏移号. 
#这种文件的创建方式 是给 logtrans  的客户端 调试之用的。 

$file=$ARGV[0] or die("Usage: $0 length\n");

#logtrans 的分片的大小是3804
$segment=4096;
$segment=3804;
$segment=4082;
print $file/1024/1024," M\n";

@array=(1..9, a..z, A..Z);
$size=scalar(@array);
$biggest_size=$segment*$size*$size*$size;
if( $file > $biggest_size)
{
	print "Error  $file is bigger than ", $biggest_size/1024/1024 ,"M\n";
	exit(-1);
}

$writeLength=0;
$end=0;
open(FILE,">$file");
for $first (@array)
{	
	for $second (@array)
	{		
		for $third  (@array)
		{
			if( $file-$writeLength <$segment )
			{
				$a=genOneFrame($first, $second, $third, $file-$writeLength);
				print FILE $a;
				#$writeLength+=$length;
				$end=1;			
				last;
			}
			else
			{
				$a=genOneFrame($first, $second, $third, $segment);	
				print FILE $a;
				$writeLength+=$segment
			}
		}
		
		last if($end);
	}
	last if ($end);
}

close(FILE);

if ((-s $file) != $file)
{
	print "Error $file\n";
}
# /****************************************************************************
# * Description	 由传入的 3个字符 组成 字符串, 最后一个是长度. 
# *			如 genOneFrame('a', 'b', 'c',10)  abcabcabca,  长度 为10.
# * @param 	
# * @return 	
# * *************************************************************************/
sub genOneFrame($$$$)
{
	my ($first_ascii, $second_ascii, $third_ascii, $size)=@_;
	$word=$first.$second.$third;
	$content=$word x(int($size/3)+1);
	$content=substr($content, 0, $size);
	return $content;
}

