#!/usr/bin/perl
#20100129
#������ d_ ��ͷ��Ŀ¼ �����������ˡ� ���Ŀ¼����Ҫ�������ڡ� 
#2010_08_16_10:25:26 add by qzj
#Ĭ�ϲ�����/root/.{a-z}{0,} ���ļ�,  �Լ�Ŀ¼��  
use Data::Dumper; 
opendir(DIR,".");
@all=readdir(DIR); 
@dir=map {if(-d){ $_;} else {} } @all;
$nogzip=1 if(grep(/nogzip/, @ARGV));
#print Dumper(@dir);
for  (@dir) 
{
if(/^d_|^D_/)
{
	next;
}
if( $_ eq "\." || $_ eq  "\.\."  || $_ =~/^\./  )
 {
#	print length($_),"\n";
#	print $_,"DDDD\n";
 }
 else 
 {
#	print $_,"\n";
	if($ARGV[0] =~/del/)
	{
		if($ARGV[1]=~/space/ && $_=~/^\./)
		{
		print "rm -rf $_ \n";
		}
		elsif($ARGV[1]=~/space/)
		{
		}
		else
		{
			
		print "rm -rf $_ \n";
		}
	
	
	}
	
	else
	{
		if($ARGV[0]=~/space/ && $_=~/^\./)
		{

		print "tar -czf ",$_,".tar", " ",$_,"\n"; 
		}
		elsif ($ARGV[0] =~/space/)
		{
		}
		else 
		{	
			
			if($nogzip)
			{
				print "tar -cf ",$_,".tar", " ",$_,"\n"; 
			}
			else
			{
				print "tar -czf ",$_,".tar.gz", " ",$_,"\n"; 
			}
		}
		
	}
	
 } 
}
