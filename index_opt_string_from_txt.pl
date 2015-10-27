#!/usr/bin/perl
$file=shift or die("Usage: $0 help.txt");

sub deal_one_txt_file($)
{
	(my $file)=@_;

	open(FILE, $file) or die("open file error\n");

	%words={};
	while(<FILE>)
	{
		chomp;
		@array=split(/\s+/, $_);
		for $word (@array)
		{
		
			next if(/\d:/);
	#		$word=~tr/A-Z/a-z/;
			$word=~ s/\ |\'|\`|\(|[\}|\"|\:|\;|\.|\]|\?|\,|\!|\)|\']{1,}$//;
			$word=~s/\"|\ |\'|\`|\(|^[\}|\"|\:|\;|\.|\]|\?|\,|\!|\)|\']{1,}//;
			

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


	@last=grep {/^-/} (keys(%words));
	
	foreach (@last)
	{
		#print $_,"\n";
	}

	return %words;
}
