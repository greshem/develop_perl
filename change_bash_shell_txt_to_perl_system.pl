#!/usr/bin/perl
$file=shift or die("Usage: $0 input_file.sh \n");

open(FILE, $file) or die("Open file $file error $!\n");
open(OUTPUT, ">".$file.".pl") or die("Create output file error $!\n");

for(<FILE>)
{
	if($_=~/\"/ && $_!~/system\(/ )
	{
		$_=~s/\"/\\\"/g;
	}
		
	if($_=~/^\s*\#/)
	{
		print OUTPUT  $_;
	}
	elsif($_=~/^\s*sub\s+.*/ || $_=~/^\{/ || $_=~/^\}/) #里面有perl 的sub 函数了.
	{
		#logger("$_ 为 perl 函数\n");
		print OUTPUT  $_;
	}
	elsif($_=~/^\s*system\(/) #
	{
		print OUTPUT  $_;
	}
	elsif($_=~/^(\s*)(.+)\n$/)
	{
		print OUTPUT  $1."system(\"".$2."\");\n";	
	}
	elsif($_=~/^\s*$/)
	{
		print OUTPUT $_;
	}
	else
	{
		print "#错误行,不能额头那个到这里\n";
	}
}

sub logger($)
{
	(my $log_str)=@_;
	open(FILE, ">> all.log") or warn("open all.log error\n");
	print FILE $log_str;
	close(FILE);
}

