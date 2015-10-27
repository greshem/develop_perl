#!/usr/bin/perl
#20100801. 
#�ӵ�ǰĿ¼�£� �ҳ� ����ĸ�Ǵ�д�ģ� ���Һ�����_ �ľ���Ϊ�� sect �ˡ� 
#
sub getIniSectsFromDir($)
{
	($outfile)=@_;
	
	open(OUTPUT, ">".$outfile) or die("open rebuild ini file error\n");
	@file=grep { ! /_/} glob("*.php");
	@sects=();
	foreach (@file)
	{
		#print $_,"\n";
		($sect)=($_=~/(.*)\.(php)/);
		@array=glob($sect."_*");
		if((scalar(@array)> 0) && $sect=~/^[A-Z]/)
		{
			print "[".$sect."]\n";
			print OUTPUT "[".$sect."]\n";
			push(@sects, $sect);
			
			@keyFilesName=glob($sect."_*.html");
			if(scalar( @keyFilesName) > 0)
			{
				foreach $keyPath (@keyFilesName)
				{
					$key=$keyPath;
					$key=~s/^$sect//;
					$key=~s/^_//g;
					$key=~s/.html$//g;
					print "\t".$key,"\n";
					print OUTPUT $key."=test\n";
				}
			}
			else
			{
			}
			
		}
	}
	
	close(OUTPUT);
	return @sects;
	
}

@a=getIniSectsFromDir("rebuild.ini");
map{print $_,"\n"} @a;

