#!/usr/bin/perl 
#@ARGV or die("$0 file\n");
opendir(DIR,".") or die("open dir error\n");
#@files=grep { -f  && /txt$/} readdir(DIR);
@files=glob("/bin/*.pl");
if(scalar(@files)==0)
{
	die("have no input files\n");
}
	%words={};
%modules={};
for(@files)
{
	print STDERR  "deal with $_\n";
	open(FILE, "$_");
	while(<FILE>)
	{
		chomp;
		@array=split(/\s+/, $_);
		for $word (@array)
		{
		
			next if(/\d:/);
			next if($word !~/\:\:/);
			#去除大小写
			#$word=~tr/A-Z/a-z/;
			#去除符号
			#$word=~ s/\ |\'|\`|\(|[\}|\"|\:|\;|\.|\]|\?|\,|\!|\)|\']{1,}$//;
			$word=~s/\"|\ |\'|\`|\(|^[\}|\"|\;|\.|\]|\?|\,|\!|\)|\']{1,}/  /;
			$word=~s/\*/ \* /g; #$a=*File::Find
			$word=~s/-/ - /g;	# GD::Image->new
			$word=~s/\$/ \$ /g; # 
			$word=~s/;/ ; /g;   # Image::Size;
			$word=~s/</ < /g;	#
			$word=~s/>/ > /g;
			$word=~s/=/ = /g;
			$word=~s/\(/ \( /g;
			$word=~s/\)/ \) /g;
			$word=~s/\}/ \} /g;
			$word=~s/\{/ \{ /g;
			$word=~s/\\/ \\ /g;
			$word=~s/\// \/  /g; #if($_=~/Math::Random/);
			$word=~s/'/ ' /g;
			$word=~s/\&/ \$ /g;
			$word=~s/\./ \. /g;
			$word=~s/!/ ! /g;
			$word=~s/%/ % /g;
			

			if($words{$word})
			{
			 $words{$word}++; #,"\n";
			}
			else
			{
			 $words{$word}=1; #,"\n";
			}
			
			@array=split(/\s+/, $word);
			foreach (@array)
			{	
				$modules{$_}++;
			}
		}
	}
	close(FILE);
}
#open(OUTPUT, ">frequency.list");
for( sort {$words{$a}<=> $words{$b}} keys %words)
{
	#print OUTPUT $_,"    ->", $words{$_},"\n";
	#print  $_,"\n", #"    ->", $words{$_},"\n";
}
#close(OUTPUT);


#for( sort {$modules{$a}<=> $modules{$b}} keys %modules)
for( grep {/::/}  keys %modules)
{
		print $_,"\n";
}
