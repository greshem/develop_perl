#!/usr/bin/perl
#2010_08_21_21:26:14 add by qzj
#文件名lowercase 之后， 假如文件存在则， 不覆盖， 自己手动去解决。 
for (glob("*"))
{
	if(! -f lc($_))
	{
		print "mv ",$_,"\t", lc($_),"\n";
	}
}
