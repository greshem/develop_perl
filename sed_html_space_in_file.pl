#!/usr/bin/perl
@file=grep(/_/  && -f  ,  glob("*"));

for (@file)
{
	print "#",$_,"\n";
	$org=$_;
	$htmlStr=$_;
	
	$org=~s/_/\\ /g;
	$delSpace=$_;	
	$htmlStr=~s/_/%20/g;
	
	print  "sed \'s/"  , $htmlStr,"/", $delSpace,"/g\' \*.htm -i \n";
}

sub sed_file()
{
	($file, $pattern)=@_;
	$org=$file;
	print  "sed";
	
}
