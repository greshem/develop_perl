#!/usr/bin/perl
use List::Util qw(first max maxstr min minstr reduce shuffle sum);

use File::Basename;
sub get_max_from_dir($)
{
	(my $dir)=@_;
	@array=grep { -f } glob($dir."/*");

	@number=map  {$_=basename($_);$_}	 @array;

	return max(@number);
	
}
$dir = shift or die("Usage: $0 iput_svn_root_dir\n");
$item=get_max_from_dir("$dir/db/revs/0/");
$item2=get_max_from_dir("$dir/db/revs/1/");
$item3= get_max_from_dir("$dir/db/revs/");

print  $dir."\t".max($item, $item2, $item3)."\n";



