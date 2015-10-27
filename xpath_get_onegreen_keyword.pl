#!/usr/bin/perl
#f18  i386  ,  xpath ok 
#onegreen /html/body/table[6]/tbody/tr/td[3]/table/tbody/tr/td/b

#--------------------------------------------------------------------------
#详细:               '/html/body/table[6]/tbody/tr/td[3]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/span'
#mdf to perl xpath:  '/html/body/table[6]/tr/td[3]/table/tr[2]/td/table[5]/tr/td/span'

use HTML::TreeBuilder::XPath;
for (glob("not_empty/*.html"))
{
	print "#========================================================================== \n";
	(my $number)=($_=~/not_empty\/(\d+)\.html/);
	my $desc=get_desc_str($_);
	$desc=~s/ /_/g;
	#$desc=~s/|/_/g;
	$desc=~s/\[/_/g;
	$desc=~s/\]/_/g;

	my $txt="txt/url_jump_$number.txt";
	$rar=get_rar_url($txt);
	
	print "$number  \t| $desc | $rar \n";
}

sub get_desc_str($)
{
	$file=shift or die("file.html xpath_expr\n");
	my $tree= HTML::TreeBuilder::XPath->new;

	$tree->parse_file( $file );
	#print  
	#返回的是  string array 
	(my $ret_str)=  $tree->findnodes_as_strings( '/html/body/table[6]/tr/td[3]/table/tr[2]/td/table[5]/tr/td/span
');
	print $ret_str."\n";
	$tree->delete; # 
	return $ret_str;

}


#位置：http://wt.onegreen.net/soft/net.teleport129.zip [跟随至新的 URL]
sub get_rar_url($)
{
	(my $input_file)=@_;
	open(FILE,  $input_file) or die("open $input_file error \n");
	for(<FILE>)
	{
		if($_=~/位置：(.*) \[跟随至新的 URL\]/)
		{
			my $url=$1;
			close(FILE);
			return $url;
		}
	}
	close(FILE);
	return undef;

}

