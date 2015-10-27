#!/usr/bin/perl 
#@ARGV or die("$0 file\n");
cpp_source_code_index("/root/diskplat/trunk/diskplat/IOCommMan.cpp");

sub cpp_source_code_index($)
{
	(my $filename)=@_;
	my %words;
	open(FILE,  $filename) or die("create file error! $! \n");
	print STDERR  "deal with $filename\n";
	while(<FILE>)
	{
		chomp;
		$word=$_;
		#$word=~ s/\!|\'|\`|\(|[\}|\"|\:|\;|\.|\]|\?|\,|\!|\)|\']{1,}$/ /g;
		#$word=~s/\"|\ |\'|\`|\(|^[\}|\"|\:|\;|\.|\]|\?|\,|\!|\)|\']{1,}/ /g;
		$word=~s/-|>|:|;|\*/ /g;
		$word=~s/\)/ /g;
		$word=~s/\./ /g;
		$word=~s/\\n/ /g;
		$word=~s/</ /g;
		$word=~s/>/ /g;
		$word=~s/=/ /g;
		$word=~s/&/ /g;
		$word=~s/,/ /g;
		$word=~s/\(/ /g;
		$word=~s/\// /g;
		$word=~s/\[/ /g;
		$word=~s/\]/ /g;
		$word=~s/"/ /g;
		$word=~s/\'/ /g;
		$word=~s/!/ /g;
		$word=~s/%/ /g;
		$word=~s/\|/ /g;
		$word=~s/\{/ /g;
		$word=~s/\}/ /g;
		$word=~s/\+/ /g;

		#$word=~s/|/ /g;

		@array=split(/\s+/, $word);
		for $word (@array)
		{
		
			next if(/\d:/);
	#		$word=~tr/A-Z/a-z/;
				

			if($words{$word})
			{
			 $words{$word}++; #,"\n";
			}
			else
			{
			 $words{$word}=1; #,"\n";
			}
		}
	}
	close(FILE);

open(OUTPUT, ">frequency.list");
for( sort {$words{$a}<=> $words{$b}} keys %words)
{
	print OUTPUT $_,"    ->", $words{$_},"\n";
}
close(OUTPUT);
	
	return %words

}
