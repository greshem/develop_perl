
use strict;                                                                      
use warnings;                                                                    
use Tie::File;                                                                   

my @lines; # 文件关联数组                                                        
my $filename='./data.txt'; # 记录文件名                                          

tie(@lines,'Tie::File',$filename) or die ("文件绑定失败\n");
# 将记录文件同数组关联，默认为文本型文件
	  # 记录分隔符使用"\r\n"或"\n"           
	  #

$lines[0]="Hello"; # 这里对数组内容的操作就直接反映到文件中去了                  
$lines[1]="world!"; # 增加一条新记录                                             
splice(@lines,1,0,"insert another line"); # 在老记录之间插入记录                                                     
#delete $lines[0]; # 删除记录                        
				  
untie(@lines); # 解除文件同数组的关联          
