#!/usr/bin/perl
use strict;
do("grep_block_section.pl");
system("dos2unix  math_handbook_outline_.txt ");
#@blocks=file_contents_to_blocks("/tmp/octave_matix.txt");
my @blocks;
#@blocks=file_contents_to_blocks("data/math_handbook_outline_.txt");
@blocks=file_contents_to_blocks("data\\linux_构架处理器_记忆.txt");

#@ret=grep { /./} @blocks;

#index_with_depth_two(@blocks);
index_with_depth_one(@blocks);

sub index_with_depth_one(@)
{
	(my @blocks)=@_;
	my $each_block;
	for $each_block (@blocks)
	{
		print get_title_first_line($each_block)."\n";	
		(my $title, my @sub_title)=get_title_first_line($each_block);	
		#(my $title, my @sub_title)=get_title_first_word($each_block);	
		print "#title->".$title."\n";
		save_file("${title}_处理器_arch_cpu_kernel.txt", $each_block);
	}
}
sub index_with_depth_two(@)
{
	(my @blocks)=@_;
	my $each_block;
	for$each_block (@blocks)
	{
		print get_title_first_line($each_block)."\n";	
		(my $title, my @sub_title)=get_title_first_line($each_block);	


		my $each_sub_title;
		for $each_sub_title (@sub_title)
		{
			my $tmp=$title."_".$each_sub_title."\n";
			$tmp=~s/第.*章//g;
			$tmp=~s/\d\.//g;
			$tmp=~s/的/_/g;
			$tmp=~s/和/_/g;
			$tmp=~s/与/_/g;
			$tmp=~s/\n/_/g;
			
			#print $tmp;
			save_file("$tmp.txt", $each_block);
		}
	}
}
#==========================================================================
#man openssl |col -b > openssl.txt
sub get_title_first_word($)
{
	(my $input)=@_;
	my @tmp=split(/\s+/, $input);
	my $title=$tmp[0];
	return $title;

}
 
sub get_title_first_line($)
{
	(my $input)=@_;
	my @tmp=split(/\n/, $input);
	my $title=$tmp[0];

	if(length($title) == 0)
	{
		die("#$input , 没有标题 \n");
	}
	$title=~s/ /_/g;
	$title=~s/\n/_/g;
	$title=~s/\n/_/g;
	return $title, @tmp[1..$#tmp] ;
}

#==========================================================================
sub save_file($$)
{
	(my $filename, my $contents)=@_;
	open(FILE, ">".$filename) or die("open file error \n");;
	my $time=get_YYYY_mm_dd_T();
	$time.=" add by greshem\n";
	print FILE $time;
	print FILE  $contents;
	close(FILE);
}





#Result: 2011-01-05-23:30:05
sub get_YYYY_mm_dd_T()
{
	use POSIX 'strftime';
	my $cur_time=POSIX::strftime('%Y-%m-%d-%H:%M:%S',localtime(time()));
	return $cur_time;	
}

