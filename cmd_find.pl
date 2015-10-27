#!/usr/bin/perl
#2011_06_21_15:03:04   星期二   add by greshem
#命令的操作的函数. 
$pattern=shift;

my @files;
if ( $^O  =~/linux/)
{
	#print "this is linux \n";
	@files= glob("/bin/*.pl");
	push(@files,  glob("/bin/*.sh"));
	push(@files,  glob("/bin/*.php"));
	push(@files,  glob("/bin/*.py"));
}
elsif ($^O =~/mswin32/i)
{
	#print "this is windows32\n";
	#<STDIN>;
	@files= glob("c:\\bin\\*.pl");
	push(@files,  glob("c:\\bin\\*.sh"));
	push(@files,  glob("c:\\bin\\*.php"));
	push(@files,  glob("c:\\bin\\*.py"));
}


for $_ (@files)
{
	#print $each
	if($_=~/$pattern/)
	{
		print $_."\n";
	}
}
