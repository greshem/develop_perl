#!/usr/bin/perl
# 莫扎特全集/Mozart.-.[莫扎特全集.Brilliant.Classics.(volume.2)CD1.(2006)].专辑.(ape).cue
for (glob("莫扎特全集/*.cue"))
{
		print $_."\n";
		deal_with_cur($_);
}

sub deal_with_cur()
{
	(my $input_file)=@_;
	my $volume;
	my $track;
	open(FILE, "$input_file") or die("open file error \n");
	for(<FILE>)
	{
		#print $_;
		if($_=~/^TITLE (.*)/)
		{
				$volume=$1;
				$volume=~s/"//g;
				$volume=~s/\(/_/g;
				$volume=~s/\)/_/g;
				$volume=~s/ /_/g;
				mkdir("output/$volume") or warn("mkdir $volume error \n");;
		}
		elsif($_=~/^\s+TITLE (.*)/)
		{
				$track=$1;
				$track=~s/"//g;
				open(FILE, ">output/$volume/$track.txt");
				print FILE $input_file."\n";
				close(FILE);

		}
	}
}
