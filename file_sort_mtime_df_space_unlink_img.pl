#!/usr/bin/perl
@files=grep { -f } glob("*.img");
#my @filesSort= sort{-M $a <=> -M $b} @files; #×î½üµÄÅÅÔÚ×îÇ°. 
my @filesSort= sort{-M $b <=> -M $a} @files;  #×îÔ¶¶  ÔÚ×îÇ°Ãæ.

#print join("\n", @filesSort);

while(1)
{
	my $size=get_left_space();
	my $need_size=3;
	if($size < $need_size)
	{
		my $img_name=shift(@filesSort);
		print "print  to del img: $img_name \n";
		unlink("$img_name");
	}
	else
	{
		print "left disk space is large than $need_size G\n";
	}
	sleep(1);
}

#==========================================================================
#df / -h    output as fallow 
#Filesystem      Size  Used Avail Use% Mounted on
#/dev/sda2        49G   45G  4.3G  92% /media/sda2

# df -BG /media/sda2/
# Filesystem     1G-blocks  Used Available Use% Mounted on
# /dev/sda2            49G   45G        5G  92% /media/sda2

sub get_left_space()
{
	my @lines=`df -BG /media/sda2 `;
	#print $lines[0];
	my @array=split(/\s+/ , $lines[1]);
	my $size=$array[3];
	$size=~s/G//g;
	$size=~s/ //g;
	return $size;
}



