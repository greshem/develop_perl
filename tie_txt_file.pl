
use strict;                                                                      
use warnings;                                                                    
use Tie::File;                                                                   

my @lines; # �ļ���������                                                        
my $filename='./data.txt'; # ��¼�ļ���                                          

tie(@lines,'Tie::File',$filename) or die ("�ļ���ʧ��\n");
# ����¼�ļ�ͬ���������Ĭ��Ϊ�ı����ļ�
	  # ��¼�ָ���ʹ��"\r\n"��"\n"           
	  #

$lines[0]="Hello"; # ������������ݵĲ�����ֱ�ӷ�ӳ���ļ���ȥ��                  
$lines[1]="world!"; # ����һ���¼�¼                                             
splice(@lines,1,0,"insert another line"); # ���ϼ�¼֮������¼                                                     
#delete $lines[0]; # ɾ����¼                        
				  
untie(@lines); # ����ļ�ͬ����Ĺ���          
