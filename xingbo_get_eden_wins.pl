#!/usr/bin/perl
mkdir("Ç®ÞÈ³Ì_Ê¤");
mkdir("Ç®ÞÈ³Ì_°Ü");
mkdir("Ç®ÞÈ³Ì_ºÍÆå");

my @tmp=glob("*.sgf");
push(@all, @tmp);
my @tmp=glob("*.txt");
push(@all, @tmp);
for (@all)
{
	if($_=~/ºÚ.*Ê¤.*_Ç®ÞÈ³Ì.*k_.*k/)
	{
		print "mv $_  Ç®ÞÈ³Ì_Ê¤/\n";
	}
	elsif ($_=~/°×.*Ê¤.*_.*k_Ç®ÞÈ³Ì.*k/)
	{
		print "mv $_  Ç®ÞÈ³Ì_Ê¤/\n";
	}
	elsif ($_=~/ºÍÆå/)
	{
		print "mv $_  Ç®ÞÈ³Ì_ºÍÆå/\n";
	}
	else 
	{
		my $name=$_;

		print "cp $_  Ç®ÞÈ³Ì_°Ü/${name}_ÆÀÂÛ.sgf \n" if($name=~/sgf$/);
		print "mv $_  Ç®ÞÈ³Ì_°Ü \n";
	}

}
