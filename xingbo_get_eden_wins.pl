#!/usr/bin/perl
mkdir("Ǯ�ȳ�_ʤ");
mkdir("Ǯ�ȳ�_��");
mkdir("Ǯ�ȳ�_����");

my @tmp=glob("*.sgf");
push(@all, @tmp);
my @tmp=glob("*.txt");
push(@all, @tmp);
for (@all)
{
	if($_=~/��.*ʤ.*_Ǯ�ȳ�.*k_.*k/)
	{
		print "mv $_  Ǯ�ȳ�_ʤ/\n";
	}
	elsif ($_=~/��.*ʤ.*_.*k_Ǯ�ȳ�.*k/)
	{
		print "mv $_  Ǯ�ȳ�_ʤ/\n";
	}
	elsif ($_=~/����/)
	{
		print "mv $_  Ǯ�ȳ�_����/\n";
	}
	else 
	{
		my $name=$_;

		print "cp $_  Ǯ�ȳ�_��/${name}_����.sgf \n" if($name=~/sgf$/);
		print "mv $_  Ǯ�ȳ�_�� \n";
	}

}
