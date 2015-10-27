#!/usr/bin/perl 

my @dir= grep {-d } glob("*");


my $length=25;

while(scalar(@dir) != 0)
{
	my @commit=splice(@dir , 0, $length);
	#print join("\t", @commit)."\n";

	my $object_str  =  join("\t", @commit);
	my $commit_str=  "-m \"add_2m: diskplat function : $object_str _________________ \" ";

	print " #========================================================================== \n";
	print "svn add $object_str \n";
	print "svn commit  $commit_str   $object_str \n";

}

