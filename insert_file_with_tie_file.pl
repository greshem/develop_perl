#!/usr/bin/perl
#use strict;                                                                      
#use warnings;                                                                    
use Tie::File;                                                                   

sub get_fun_body_start($)
{
	(my $array_ref)=@_;
	my $count=0;
	for $_ (@{$array_ref})
	{
		print $_;
		if($_=~/\s*{/)
		{
			return $count;	
		}	
		$count++;
	}

	#print "没有东西\n";
}

my @lines; # 文件关联数组                                                        
#my $filename=shift or die("Usage: $0 file \n");
$filename="main_01_VOLUMES.cpp";
#my $filename='./data.txt'; # 记录文件名                                          

tie(@lines,'Tie::File',$filename) or die ("文件绑定失败\n");
# 将记录文件同数组关联，默认为文本型文件
# 记录分隔符使用"\r\n"或"\n"           
#

$insert_start=	get_fun_body_start(\@lines);
#splice(@lines,$insert_start,0,"insert another line");
@insert_line=qw('aaaa\n'  'bbbb\n');

@return_line=@lines[0..$insert_start];
$insert_start++;
$count=scalar(@lines);
@buttom_part=@lines[$insert_start..$count];

push(@return_line, @insert_line);
push(@return_line, @insert_line);
push(@return_line, @buttom_part); 
#$lines[0]="Hello"; # 这里对数组内容的操作就直接反映到文件中去了                  
#$lines[1]="world!"; # 增加一条新记录                                             
#splice(@lines,1,0,"insert another line"); # 在老记录之间插入记录                                                     
#delete $lines[0]; # 删除记录                        
				 
@lines=@return_line; 
untie(@lines); # 解除文件同数组的关联          


