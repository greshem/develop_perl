#!/usr/bin/perl
#my $file="case1.txt";
my $file="delete_all_comment.sh";
open(FILE, $file) or die("Open $file  file error \n");
for(<FILE>)
{
	if($_=~/=/)
	{
		#print $_;
		chomp;
		$_=~s/^\s+//g;
		$_=~s/\s+$//g;
		
		my $line=$_;
		my @array=split(/=/,$line);
		my $pattern=$array[0];
		

		$line=~s/\//\\\//g;
		print  <<EOF
sed -i  /$pattern/{s/.*/$line/}    install_2013.rsp
EOF
;
	}
}
