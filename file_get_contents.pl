#!/usr/bin/perl 
#2011_03_15_16:04:52   星期二   add by greshem
#2010_10_14_18:35:47 add by greshem qzj
# 可以测试一下这两者的区别, 应该没有区别的.  
#$/="";
sub file_get_contents($)
{
	(my $filename)=@_;
	open(FILE, $filename);
	$/=undef;
	$string=(<FILE>);
	close(FILE);
	$/="\n";
	return  $string ;
}

sub file_get_contents_array($)
{
	(my $filename)=@_;
	open(FILE, $filename);
	my @string=(<FILE>);
	close(FILE);
	return  @string ;
}

sub test1()
{
	$str=file_get_contents("/etc/passwd");
	#print $str;

	print "#===========\n";
	$str=file_get_contents("/etc/issue");
	#print $str;


	my @tmp= file_get_contents_array("/etc/passwd");
	print $tmp[0]."\n";
}


sub test2()
{
	use File::Slurp qw( read_file);
	my $text = read_file( '/etc/passwd' ) ;
	my @lines = read_file( '/etc/passwd' ) ;
	#print $text;
	#print join("|", @lines);
}


#test1();
test2();
