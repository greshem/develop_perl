#!/usr/bin/perl
#2011_02_13_16:17:45 add by greshem
#req mac 的格式的变化写成库, 多种mac 格式的转换.  
#    #hash 的dump  写成 ok dump_hash.pl

use Data::Dumper;

# /****************************************************************************
# * Description	把 aabbccddeeff转换成  aa.bb.cc.dd.ee.ff 假如 以 0 开头的 就不显示. nwconn 启动传入的参数。  
# * @param 	
# * @return 	
# * **************************************************************************/
sub change_to_nwconn_mac($)
{
	($mac)=@_;
	if($mac !~/(..)(..)(..)(..)(..)(..)$/)
	{
		die("error input mac eror");
	}
	$a=$1;
	$b=$2;
	$c=$3;
	$d=$4;
	$e=$5;
	$f=$6;

	$a=~s/^0//;
	$b=~s/^0//;
	$c=~s/^0//;
	$d=~s/^0//;
	$e=~s/^0//;
	$f=~s/^0//;

	$ret=$a.".".$b.".".$c.".".$d.".".$e.".".$f;
	return $ret;
}

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
"00016c72547a"=> "sf_main",
"90fba69a1be1"=> "ar_main",
"90fba69a1b49"=> "ar_back",
#"00219769bff8"=> "dzh_dcd",
"00016c725493"=> "iptv", 
"002401023371"=> "ETF",
"00e04c83ac8b"=> "qihuo"
);


# 把 上面的%mac 的 key  调用 change_to_nwconn_mac 之后 再 调用  dump_hash 之后 粘贴过来的hash. 
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

#print Dumper($mac);
for $key (keys (%mac))
{
	#print "########################################################################\n";
	#print $key,"=>", $mac{$key},"\n";

	$nwconn_key=change_to_nwconn_mac($key);;	
	$mac_nwconn{$nwconn_key}=$mac{$key};
}

#dump_hash(\%mac_nwconn);
#dump_hash(\%mac_nwconn);


print "########################################################################\n";
sub check_windows_nwconn()
{
	%check=%mac_nwconn;

	$count_windows=0;
	open(FILE, "pstree -pa |") or die("open pstre pipe eror\n");

	for(<FILE>)
	{
		if($_=~/nwconn,(\d+)\s+.*:(.*):.*/)
		{
			$pid=$1;
			$mac=$2;
			if( ! defined($mac_nwconn{$mac}) )
			{
				print "#Warn :".$mac." 对应的 客户端 临时客户端. \n";
			}
			else
			{
				print $pid."\t".$mac."=>". $mac_nwconn{$mac}." 连接上去了 正常. \n";
				$count_windows++;
				delete $check{$mac};	
			}
		}
	}

	if( $count_windows != scalar(keys(%mac_nwconn)))
	{
		print "Error: 注册过肯定连上的 客户端没有连接上\n";
		print "列表如下:";
		dump_hash(\%check);
		return 0;
	}
	else
	{
		print "正常, 该连的连上去了\n";
		return 1;
	}
	
}

check_windows_nwconn();
sub gen_nwconn_strace_command()
{
	
}
