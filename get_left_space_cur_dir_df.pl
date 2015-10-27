#!/usr/bin/perl
sub get_left_space_cur_dir()
{
	my @lines=`df -BG ./ `;
	#print $lines[0];
	my @array=split(/\s+/ , $lines[1]);
	my $size=$array[3];
	$size=~s/G//g;
	$size=~s/ //g;
	return $size;
}


print get_left_space_cur_dir();
