#!/usr/bin/perl
for (glob("*.debug"))
{
	select(STDOUT);
	print "deal with $_ \n";
	deal_with_one_file($_);
}

sub deal_with_one_file()
{
	(my $input_file)=@_;
	open(OUTPUT, ">$input_file.idc") or die("open $input_file.idc error\n");
	select(OUTPUT);
print <<EOF
#include <idc.idc>
static main()
{
EOF
;

	#nm -n ls.debug |egrep " t|T " -i
	open(PIPE, " nm -a $input_file   |egrep \" T|t|W \"| ") or die("error $!\n");
	#open(PIPE, " nm -a $input_file  |" ) or die("error $!\n");
	for(<PIPE>)
	{
		my @array=split(/\s+/, $_);
		if(length($array[0])> 0 )
		{
		print  <<EOF
		MakeName(0x$array[0], "$array[2]");
EOF
;
		}


}


	print <<EOF
}
EOF
;

#
}
