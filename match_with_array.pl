#!/usr/bin/perl
#��һ��pattern ������ƥ��һ��.
sub match_line_with_array($@)
{
	(my $line, @patterns)=@_;
	for $pattern (@patterns)
	{
		if($line!~/$pattern/)
		{
			return undef;	
		}
	}
	return 1;
}

@patterns=qw(aa bb cc dd ee ff  );

if( match_line_with_array("aa bb cc dd ee ff",  @patterns))
{
	print "OK \n";
}
else
{
	print "NOT OK\n";
}
