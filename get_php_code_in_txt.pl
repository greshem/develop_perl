#!/usr/bin/perl
#
#2010_08_08_08:24:01 add by qzj
#从 php中文手册里 chm 转html html 转txt 之后 再从 TXT中抽取 php 的代码块。 
$file=shift or die("Usage: $0 file.txt");
open(FILE, $file) or die("Open file error $!\n");
$inBlock=0;
%block={};
$count=0;
for(<FILE>)
{
	if(/^<\?/)
	{
		$inBlock=1;
		$block{$count}=[];
	}
	if(/\?>/)
	{
		push(@{$block{$count}}, $_);
		$inBlock=0;
		$count++;
	}
	
	if($inBlock==1)
	{
		push(@{$block{$count}}, $_);
	}

}


print scalar(keys(%block))," code block\n";
print @{$block{0}};
