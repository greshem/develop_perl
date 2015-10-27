#!/usr/bin/perl

use Cwd;

my $pwd=getcwd();


for $each (glob("*.tar.gz"))
{
	$tar=$each;
	$tar=~s/\.gz//;
	if(-f $tar.".bz2")
	{
		#print "#delete $each \n";
		my $pwd=getcwd();
		logger ("rm -f  $pwd/$each \n");
	}
}

for $each (glob("*.tar"))
{
	$tar=$each;
	if(-f $tar.".bz2")
	{
		#print "#delete $each \n";
		my $pwd=getcwd();
		logger ("rm -f  $pwd/$each \n");
	}

	if(-f $tar.".gz")
	{
		#print "#delete $each \n";
		my $pwd=getcwd();
		logger ("rm -f  $pwd/$each \n");
	}

}

for $each (glob("*.zip"))
{
	$tar=$each;
	$tar=~s/\.zip//;
	if(-f $tar.".tar.gz")
	{
		#print "#delete $each \n";
		my $pwd=getcwd();
		logger ("rm -f  $pwd/$tar.tar.gz \n");
	}
}


#×î¼òµ¥µÄ.
sub logger($)
{
	(my $log_str)=@_;
	open(FILE, ">> /tmp/all2.log") or warn("open all.log error\n");
	print FILE $log_str;
	close(FILE);
}

