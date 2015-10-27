#!/usr/bin/perl

for( grep { -f } glob("*"))
{
	if(is_elf_file($_))
	{
		print "objdump -d -S  $_ | c++filt \n";
	}
}
sub is_elf_file($)
{
	(my $filename)=@_;
	open(PIPE, "file $filename|") or die("open pipe error\n");
	for(<PIPE>)
	{
		if($_=~/ELF.*LSB.*executable/)
		{
			return 1;
		}
	}
	return undef;
}
