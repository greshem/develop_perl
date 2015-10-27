#!/usr/bin/perl
use File::Copy;
foreach (<*>)
{
	if($_=~/php|asp/)
	{
		#print $_,"\n";	
		$output=$_;
		$output=~s/asp/html/;
		#print $output,"\n";
		@array=split(/\?/, $output);
		
		$GETS=$array[1];
		$GETS=~s/=/_/g;
		$GETS=~s/&/_/g;
		
		($file, $suffix)=($array[0]=~/(.*)\.(html)/);
		print $file,"_",$GETS,".html","\n";	
		$output=$file."_".$GETS.".html";	

		print $_,"->", $output,"\n";
		move($_, $output);
		#$output=join("_", reverse(@array));
		#print $output,"\n";
	}
}

