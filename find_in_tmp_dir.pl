#!/usr/bin/perl
@files=glob("/tmp*");
#foreach (glob("/tmp*"))
#foreach (@files)
#for $each in @files // ERROR
$pattern=shift or die("Usage: $0 pattern \n");

foreach (glob("/tmp*"))
{
	#print $_,"\n";
	foreach $each2 (glob("$_/*"))
	{	
		if($each2=~/$pattern/i)
		{
			if( -d $each2 )
			{
				print "cd ",$each2,"\n";
			}
			else	
			{
				print "file ",$each2,"\n";
			}
		}
	}
}
