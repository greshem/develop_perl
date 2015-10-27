#!/usr/bin/perl 

#20100707 ��� file_type ��Ŀ¼�� �����洢������ʽ���ļ��� 

#2010_07_26_20:20:27 add by qzj
#push(@INC, "/root/PerlQzjLib/");

use filename_increase_copy;

my %suffixDir=("pl"=>"develop_perl/",
			"cgi"=>"develop_perl/",
			"tdy"=>"develop_perl/",
			"cpp"=>"develop_cpp/",
			"hpp"=>"develop_cpp/",
			"h"=>"develop_cpp/",
			"hh"=>"develop_cpp/",
			"cc"=>"develop_cpp/",
			"c"=>"develop_cpp/",
			"s"=>"develop_cpp/",
			"php"=>"develop_php/",
			"sh"=>"develop_bash/",
			"bat"=>"develop_bash/",
			"class"=>"develop_java/",
			"java"=>"develop_java/",
			"jar"=>"develop_java/",
			"py"=>"develop_python/",
			"vim"=>"develop_vim/",
			"css"=>"develop_css/",
			"html"=>"develop_css/",
			"awk"=>"develop_awk/",
		"file_type"=>"file_type/"

);
			
for $each (values %suffixDir)
{
	mkdir($each);
}
			
for(<*>)
{
	if(-f $_) 
	{
		$suffix=getSuffix($_);
		if(defined $suffix)
		{
#			print $_," --> ", $suffix ,"\n";	
			#�и��ݺ�׺�ó��� toDir Ŀ¼. 
			if($suffixDir{$suffix})
			{
				print "mv ",  $_, "\t", ,"/root/",filename_increase_copy($suffixDir{$suffix}."/".$_),"\n";
			}
			else
			{
				print "mv ",  $_, "\t", "file_type", "\t", ,"\n";
			}
		
		}
		else
		{
	#		print $_," �޷�����\n";
			
		}
	}
}
sub getSuffix($)
{
	($in)=@_;
	if($in=~/\./)
	{
		my @array=split(/\./, $in);
		return $array[scalar(@array)-1];	
	}
	else
	{
		return undef;
	}
	
}
