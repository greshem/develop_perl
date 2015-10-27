#!/usr/bin/perl 
my $src_list=shift;  #or die("Usage: $0 src_list_file \n");
if(! defined($src_list))
{
	print( " find . |egrep '\.cpp\$|\.h\$' > src_list ");
	system( " find . |egrep '\.cpp\$|\.h\$' > src_list ");
	$src_list="src_list";
}


open(LIST, $src_list) or die("open src list error \n");
my $each_cpp;
for $each_cpp (<LIST>)
{
	
	open(PIPE,  "grep DBI_DestroyShareEnv   -n $each_cpp |") or die("create grep cmd error \n");
	for(<PIPE>)
	{
		if($_=~/:/)
		{
			print  $each_cpp."\t".$_."\n";
		}
	}
}
