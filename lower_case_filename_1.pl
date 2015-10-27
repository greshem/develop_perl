#!/usr/bin/perl
for (glob("*"))
{
	if(! -f lc($_))
	{
		if($_=~/[A-Z]/)
		{
			#print "º¬ÓÐ´óÐ´×ÖÄ¸\n";
			$to=$_;
			$to=~s/([A-Z])/_\1/g;
			$to=~s/^_//g;
			print  "mv ", $_, "\t", lc($to),"\n";;
		}
		else
		{
			print "mv ",$_,"\t", lc($_),"\n";
		}
	}

}
