#!/usr/bin/perl
#
#2010_08_08_08:24:01 add by qzj
#�� php�����ֲ��� chm תhtml html תtxt ֮�� �ٴ� TXT�г�ȡ php �Ĵ���顣 
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
