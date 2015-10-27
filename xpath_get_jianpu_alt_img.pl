#!/usr/bin/perl
#f18  i386  ,  xpath ok 
#onegreen /html/body/table[6]/tbody/tr/td[3]/table/tbody/tr/td/b
#//html/body/table[5]/tbody/tr/td
use HTML::TreeBuilder::XPath;
for (glob("html_/*.htm"))
{
	print "\n#$_ ========================================================================== \n";
	my $desc=get_cata_str($_);
	$desc=~s/;//g;
	$desc=~s/>>/\//g;

}

sub get_cata_str($)
{
	$file=shift or die("file.html xpath_expr\n");
	my $tree= HTML::TreeBuilder::XPath->new;

	$tree->parse_file( $file );
	#print  
	#返回的是  string array 
	#
	#(my $ret_str)=  $tree->findnodes_as_strings( '/html/body/div[2]/div/div[2]/div/div/img[2][@alt]');
	#(my $ret_str)=  $tree->findnodes_as_strings( '/html/body/div[2]/div/div[2]/div/*/[@alt]/');
	(my $ret_str)=  $tree->findnodes_as_strings( '/html/body/div[2]/div/div[2]/div/div/img/@alt');
	(my $ret_str2)=  $tree->findnodes_as_strings( '/html/body/div[2]/div/div[2]/div/div/img/@src');

	print $ret_str."\n";
	print $ret_str2."\n";
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

