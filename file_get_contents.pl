#!/usr/bin/perl 
#2011_03_15_16:04:52   ���ڶ�   add by greshem
#2010_10_14_18:35:47 add by greshem qzj
# ���Բ���һ�������ߵ�����, Ӧ��û�������.  
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
