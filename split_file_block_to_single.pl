#!/usr/bin/perl
do("grep_block_section.pl");
@blocks=file_contents_to_blocks("/tmp/octave_matix.txt");
#@ret=grep { /./} @blocks;

for(@blocks)
{
	print get_title($_)."\n";	
	$title=get_title($_);	
	save_file("$title.txt", $_);
	
}

sub get_title($)
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
	return $title;
}

#==========================================================================
sub save_file($$)
{
	(my $filename, $contents)=@_;
	open(FILE, ">".$filename) or die("open file error \n");;
	print FILE  $contents;
	close(FILE);
}




