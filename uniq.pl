#!/usr/bin/perl -w
sub file_to_array($)
{
	(my $filename)=@_;
	my @array;
	open(FILE, "$filename") or die ("open file error\n");
	while(<FILE>)
	{
		push @array,$_;
	}
	return @array;
}

#==========================================================================
#ֱ�Ӵ�������
sub uniq
{
	my @input_array=@_;
	my %hash;
	foreach(@input_array)
	{
		$hash{$_}++;
	}
	return keys(%hash);
}
#==========================================================================
#������������� 
sub uniq_2($)
{
	(my $input_array)=@_;
	my %hash;
	foreach(@{$input_array})
	{
		$hash{$_}++;
	}
	return keys(%hash);
}
########################################################################
#mainloop
$file=shift or die("Usage: $0 input_file \n");
@array=file_to_array($file);
#@ret_array=uniq(@array);

$tmp=\@array;
@ret_array=uniq_2($tmp);

print @ret_array;
