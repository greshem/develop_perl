#!/usr/bin/perl
# D:\tmp2_src_extract\gnugo-3.9.1\gnugo-3.9.1\patterns\fuseki19.dbz
#F-H9-157 3 odmdpppcjpncdpobpjttjjttdjttnettpdttndttjdttddttoc


our %g_ascii_2_number=(
"w"=>"23",
"a"=>"1",
"r"=>"18",
"d"=>"4",
"x"=>"24",
"j"=>"10",
"y"=>"25",
"u"=>"21",
"h"=>"8",
"k"=>"11",
"g"=>"7",
"f"=>"6",
"i"=>"9",
"t"=>"20",
"e"=>"5",
"n"=>"14",
"m"=>"13",
"v"=>"22",
"s"=>"19",
"l"=>"12",
"p"=>"16",
"c"=>"3",
"b"=>"2",
"q"=>"17",
"z"=>"26",
"o"=>"15",
);

print_header();
my  $fuseki_str=shift or die("usage: $0 input_str \n");
#my $fuseki_str="odmdpppcjpncdpobpjttjjttdjttnettpdttndttjdttddttoc";
#my $fuseki_str= "ffdpppdheffedeeepdfcgddcdd";
#my $fuseki_str="bbbbbbbbbbbbbbbb";
#my $multigo_str=change_to_multigo($fuseki_str);
my $multigo_str=split_to_wb($fuseki_str);

#print "$fuseki_str\n";
#print "$multigo_str\n";


sub print_header()
{
		print <<EOF
(;SZ[19]
EV[吃子练习：先吃3子为胜]
DT[asfa]
PW[B]
WR[22k]
PB[bbbb]
BR[24k]
KM[]
RE[test];
EOF
;
}
sub change_to_multigo($)
{
	(my $str)=@_;
	#my $str="odmdpppcjpncdpobpjttjjttdjttnettpdttndttjdttddttoc";

	my $length=length($str);
	my $ret_str=undef;
	for($i=0; $i<int($length/2); $i++)
	{
		my $step=substr($str, 2*$i, 2);
		
		my $last=substr($step, 1, 1);
		
		my $number=$g_ascii_2_number{$last};
		#print "$step  sed $last  $number \n";
		$step_new=$step;
		$step_new=~s/$last$/$number/;
		#print " $step ->  $step_new  \n";
		$ret_str.=$step_new;
	}
	return $ret_str;
}

sub split_to_wb($)
{
	(my $str)=@_;
	#my $str="odmdpppcjpncdpobpjttjjttdjttnettpdttndttjdttddttoc";

	my $length=length($str);
	my $ret_str=undef;
	my $tag=0;
	for($i=0; $i<int($length/2); $i++)
	{
		my $step=substr($str, 2*$i, 2);
		if($tag==0)
		{	
			print ";B[$step]\n";	
			$tag=1;
		}
		else
		{
			print ";W[$step]\n";	
			$tag=0;
		}
	}
	#return $ret_str;
	print ")\n";
}


#my @array=split(/../, $str);
#print join("\t", @array);
 
__DATA__
#上面的hash 通过这样的方式 生成的. 
seq_ascii.pl  a z  > /tmp/1
seq  1 26 > /tmp/2

paste 1 2
paste /tmp/1 /tmp/2
paste /tmp/1 /tmp/2  > /tmp/tmp

cf.pl hash
gen_perl_Lang_hash_from_file.pl  /tmp/tmp


