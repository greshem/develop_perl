#!/usr/bin/perl

my @php_files=get_php_files();
my @other_files= grep {!/php$|pl$|sh$/ && -f } glob("*");

@php_short_names=get_shortnames(@php_files);
@other_short_names=get_shortnames(@other_files);

for (@php_files)
{
	#gen_sed_scripts($_,  @php_short_names);
	#gen_sed_scripts($_,  @other_short_names);

}


for (@other_files)
{
	#gen_sed_scripts($_,  @php_short_names);
	gen_sed_scripts($_,  @other_short_names);
}

########################################################################
#对 一个文件 进行替换  用pattern 数组.
sub gen_sed_scripts($@)
{
	(my $file, @patterns)=@_;
	for $pattern (@patterns)
	{
		print "sed  \"/href|action/{s/$pattern.aspx/$pattern.php/g}\" $file   -i \n";
	}
}

sub get_php_files()
{
	return (glob("*.php"))
}

sub get_shortnames(@)
{
	(my @input_phps)=@_;
	my @ret;
	#my @ret=map{s/\.php//g} @input_phps;
	for(@input_phps)
	{
		if($_=~/(.*)\.(.*)/)
		{
			push(@ret, $1);	
		}
	}
	return @ret;
}

