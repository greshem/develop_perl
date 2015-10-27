#!/usr/bin/perl
#2011_02_13_16:39:23 add by greshem
sub dump_hash($)
{

	($in)=@_;
	print "%out=(\n";
	for $each  (keys(%{$in}))
	{
		#print  "\"".$each ."\"=>\"". ${$in}{$each}."\", \n";
		$each2=${$in}{$each};
		print <<EOF
"$each"=>"$each2",
EOF
;
	}
	print ");";
}



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


%copy=%mac;
dump_hash(\%mac);
