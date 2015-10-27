#!/usr/bin/perl
@array=qw(aa bb cc dd ee ff);
%hash=@array;


#%hash = {
#          'cc' => 'dd',
#          'aa' => 'bb',
#          'ee' => 'ff'
#        };


%mac=(
"f07d6816505c"=> "sf_back",
"00219769bff8"=> "dzh_dcd",
"00016c72547a"=> "sf_main",
"90fba69a1be1"=> "ar_main",
"90fba69a1b49"=> "ar_back",
"00016c725493"=> "iptv",
"002401023371"=> "ETF",
"00e04c83ac8b"=> "qihuo"
);
@array2=%mac;


# $array2 = [
#           'f07d6816505c',
#           'sf_back',
#           '00016c725493',
#           'iptv',
#           '90fba69a1be1',
#           'ar_main',
#           '00e04c83ac8b',
#           'qihuo',
#           '90fba69a1b49',
#           'ar_back',
#           '00016c72547a',
#           'sf_main',
#           '002401023371',
#           'ETF',
#           '00219769bff8',
#           'dzh_dcd'
#         ];


use Data::Dumper;
print Data::Dumper->Dump([\%hash]);
print Data::Dumper->Dump([\@array2]);

sub convert_to_hash(@)
{
	(my @input)=@_;
	my %hash;
	for(@input)
	{
		$hash{$_}=$_;
	}
	return %hash;
}
