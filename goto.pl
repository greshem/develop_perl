#!/usr/bin/perl
sub loop1()
{
	LABEL: while()
	{
		print "33333\n";
		#last LABEL if(0);	
		goto LABEL;
	}
}

sub loop2()
{
	LABEL:
	print "444\n";
	#last LABEL if(0);	
	goto LABEL;
}


#DONE: 最后总是可以被执行到的.
sub demo3()
{
	my $ret=undef;;
	for(1..99)
	{
		if($_=~/100$/)
		{
			$ret=$_;
			goto DONE;
		}
	}

DONE:
	$ret=1111;
	return $ret;
}
#loop2();

print demo3();


