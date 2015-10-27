#!/usr/bin/perl

#2011_02_14_20:55:31 add by greshem
%mac_nwconn=(
"f0.7d.68.16.50.5c"=>"sf_back",
"0.1.6c.72.54.7a"=>"sf_main",
"90.fb.a6.9a.1b.e1"=>"ar_main",
"90.fb.a6.9a.1b.49"=>"ar_back",
#"0.21.97.69.bf.f8"=>"dzh_dcd",
"0.e0.4c.83.ac.8b"=>"qihuo",
"0.1.6c.72.54.93"=>"iptv",
"0.24.1.2.33.71"=>"ETF",
);

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


sub return_hash()
{
	%ret;
   open(FILE, "pstree -pa |") or die("open pstre pipe eror\n");                         
                                                                                         
    for(<FILE>)
    {
        if($_=~/nwconn,(\d+)\s+.*:(.*):.*/)
        {
            $pid=$1;                                                                     
            $mac=$2;                                                                     
			if($mac_nwconn{$mac})
			{
				$suffix= $mac_nwconn{$mac};
				$ret{$mac}=$pid."_".$suffix;
			}
        }
    }                  

	return %ret;
}

%a=return_hash();
dump_hash(\%a);
