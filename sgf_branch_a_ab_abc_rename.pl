#!/usr/bin/perl
#$in=shift or die("usage: $0 string\n");
#print lc(substr($in, 0, 2)),"/", lc(substr($in, 0,4)), "/",$in;

for (glob("*.sgf"))
{
	if(length($_)>10)  #
	{
		deal_with_abcdef($_);	
	}
	else
	{
		#print "$_ 文件名 太短了 \n";
	}
}

#abcd.sgf 4步棋 
sub deal_with_abcd($)
{
	(my $input)=@_;

		my $depth1= lc(substr($input, 0, 2));
		my $depth2= lc(substr($input, 2, 2));
		mkdir($depth1);
		mkdir($depth1."/".$depth2);
		print "mv $_ $depth1/$depth2 \n";

}


#abcd.sgf 6步棋  6+4
sub deal_with_abcdef($)
{
	(my $input)=@_;

		my $depth1= lc(substr($input, 0, 2));
		my $depth2= lc(substr($input, 2, 2));
		my $depth3= lc(substr($input, 4, 2));
		mkdir($depth1);
		mkdir($depth1."/".$depth2);
		mkdir($depth1."/".$depth2."/".$depth3);
		print "mv $_ $depth1/$depth2/$depth3 \n";
		

}
