#!/usr/bin/perl
#20100129
#假如是 d_ 开头的目录 不再做备份了。 这个目录就是要让他存在。 
#2010_08_16_10:25:26 add by qzj
#默认不处理/root/.{a-z}{0,} 的文件,  以及目录。  
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
