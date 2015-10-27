#!/usr/bin/perl
for $each (glob("*.txt"))
{
	print "#处理 $each\n";
	replace_one_file($each);
}

sub replace_one_file($)
{
	(my $input)=@_;
	
	open(FILE, $input) or die("open file error, $input , Error:$!\n");
	open(OUTPUT, ">".$input.".output") or die("create output file error\n");

	for(<FILE>)
	{
		$line=$_;
		$line=~s/　/ /g;
		$line=~s/。/\.\n/g; 
		$line=~s/^(\s+)//g;
		print OUTPUT $line;
	}

	close(FILE);
	close(OUTPUT);
}
__DATA__
群论_	GAP

#用shell 的脚本. 
sed 's/　/_/g' tmp2 -i 

sed 's/　/_/g' tmp2 -i 


sed 's/（/\(/g' algo.txt  -i

sed 's/）/\)/g' algo.txt  -i   
