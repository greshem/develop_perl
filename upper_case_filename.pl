#!/usr/bin/perl
for (glob("*"))
{
	if(! -f uc($_))
	{
		if($_=~/[a-z]/)
		{
			#print "���д�д��ĸ\n";
			$to=$_;
#			$to=~s/([A-Z])/_\1/g;
#			$to=~s/^_//g;
			print  "mv ", $_, "\t", uc($to),"\n";;
		}
		else
		{
			print "mv ",$_,"\t", uc($_),"\n";
		}
	}

}
