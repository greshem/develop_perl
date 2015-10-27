#==========================================================================
#print_array_with_
sub quotation_line(@)
{
	(my @lines)=@_;
	for $each (@lines)
	{
		chomp($each);
		print "\"$each\"\n";
	}
}

@a=qw(bbb bbbb ccc ddd eee);

quotation_line(@a);
