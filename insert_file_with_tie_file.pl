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

	#print "û�ж���\n";
}

my @lines; # �ļ���������                                                        
#my $filename=shift or die("Usage: $0 file \n");
$filename="main_01_VOLUMES.cpp";
#my $filename='./data.txt'; # ��¼�ļ���                                          

tie(@lines,'Tie::File',$filename) or die ("�ļ���ʧ��\n");
# ����¼�ļ�ͬ���������Ĭ��Ϊ�ı����ļ�
# ��¼�ָ���ʹ��"\r\n"��"\n"           
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
#$lines[0]="Hello"; # ������������ݵĲ�����ֱ�ӷ�ӳ���ļ���ȥ��                  
#$lines[1]="world!"; # ����һ���¼�¼                                             
#splice(@lines,1,0,"insert another line"); # ���ϼ�¼֮������¼                                                     
#delete $lines[0]; # ɾ����¼                        
				 
@lines=@return_line; 
untie(@lines); # ����ļ�ͬ����Ĺ���          


