#!/usr/bin/perl
#find $(pwd)/ -type d -name source  > /tmp/tmp
#for each in $(tac /tmp/tmp ); do cd $each; ./configure && make ; done
#for each in $(cat /tmp/tmp ); do cd $each; ./configure && make ; done


# samba-2.0.10/source/bin/nmbd
# samba-2.0.10/source/bin/smbd
# samba-2.0.10/source/bin/swat

for( grep {-d } glob("*/"))
{
	if( (-f $_."./source/bin/nmbd")
		&&  (-f $_."./source/bin/smbd")
		&&  (-f $_."./source/bin/swat")
		)
	{
		print $_."\n";
	}
	else
	{
		print "$_ , NOT OK \n";
	}
}
