use Algorithm::Permute;
#4������ ȡ ������ ���е� ���.
sub pick_3_from_4($)
{
	(my $input)=@_;
	my $p = new Algorithm::Permute($input, 3);
	 while (@res = $p->next) {
	 print join(", ", @res), "\n";
	}

}



@tmp= qw(  ) ;
pick_3_from_4(\@tmp);

