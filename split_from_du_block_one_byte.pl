#!/usr/bin/perl
$du=shift or die("Usage: $0 du_list.lst\n");

open(FILE, $du ) or die("open file error\n");

@array;
$isoCount=0;
$curSize=0;
foreach (<FILE>)
{
	if($_=~/(\d+)\s+(\S+)/)
	{
		if(-d $2)
		{
			push(@array, $2);
			$curSize+=$1;
			if($curSize>=4000*1024*1024)
			{
				$toFile="ISO_".$isoCount;

				print "####################\n";
				print "toFile ", $toFile;
				print $curSize/1024/1024,"M\n";
				dumpArrayToFile(\@array, $toFile );
				dumpArray(\@array);
				@array=();
				$curSize=0;
				$isoCount++;				
			}
		}
		else
		{
			print $2 , "不是目录\n";
		}
	}
	else
	{
		print $_, "格式不正确 , 略过\n";	
	}
}

print "Last iso Size ";
print $curSize/1024/1024,"M\n";
$toFile="ISO_".$isoCount;
dumpArray(\@array);
dumpArrayToFile(\@array, $toFile);

sub dumpArray()
{
	($a)=@_;
	foreach (@{$a})
	{
		print $_,"\n";
	}	

}

sub dumpArrayToFile()
{
	($a, $toFile)=@_;
	open(OUTPUT, ">".$toFile) or die("open file error\n");
	foreach (@{$a})
	{
		print OUTPUT $_,"\n";
	}	

	close(OUTPUT);
}
