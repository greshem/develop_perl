#!/usr/bin/perl 

use Test::More tests => 70;

use strict;
use warnings;


	   use List::MoreUtils qw{
	       any all none notall true false
	       firstidx first_index lastidx last_index
	       insert_after insert_after_string
	       apply indexes
	       after after_incl before before_incl
	       firstval first_value lastval last_value
	       each_array each_arrayref
	       pairwise natatime
	       mesh zip uniq distinct minmax part
	   };



my @test=qw(aa bb cc dd ee);

#firstidx 不存在返回-1 而不是 undef
#print firstidx{$_ eq "bb"} @test;

print any {$_ eq "bbb"} @test;

sub get_end_ip($@)
{
	(my $endip,my  @array)=@_;
	if((firstidx{$_ == $endip}  @array)==-1)
	{
		return $endip;
	}
	else
	{
		return $endip-1;
	}
}

#==========================================================================
#排序过的单元测试.
sub test()
{
	my @array=qw( 222 231 235 240);
	my $end_ip=235;


	ok((get_end_ip($end_ip, @array) ==  234 ), "test");
	ok((get_end_ip(234, @array) ==  234 ), "test");
	ok((get_end_ip(222, @array) ==  221 ), "test");
	ok((get_end_ip(221, @array) ==  221 ), "test");

	my $i=0;
	for($i=0;$i<=100;$i++)
	{
		ok((get_end_ip($i, @array) ==  $i ), "test");
	}

	
}

#==========================================================================
#
#没有测试过的 , 其实这里导致无所谓 顺序的. 
sub test2()
{
	my @array=qw( 235 222  240 231   );
	#my @sort=sort{$a<=> $b}  @array;

	my $end_ip=235;
	#use Test::More tests2 => 70;

	ok((get_end_ip($end_ip, @array) ==  234 ), "test");
	ok((get_end_ip(234, @array) ==  234 ), "test");
	ok((get_end_ip(222, @array) ==  221 ), "test");
	ok((get_end_ip(221, @array) ==  221 ), "test");

	my $i=0;
	for($i=0;$i<=100;$i++)
	{
		ok((get_end_ip($i, @array) ==  $i ), "test");
	}

}

########################################################################
sub get_dhcpd_range_end($$@)
{
	(my $start, my $end, my @ips)=@_;
	#my $start=1;
	#my $end=150; 
	#my @ips= qw( 100 150 151 152  149);

	my $i;
	for($i=$end; $i> $start; $i--)
	{
		if(   (firstidx{$_ == $i }  @ips)==-1)
		{
			printf "get it $i \n";
			return  $i;
		}
	}

	return $end;
}

#    
sub test_get_dhcpd_range_end()
{

	my @ips= qw( 100 150 151 152  149 147 146);
	ok((get_dhcpd_range_end(1, 100, @ips) == 99));

	ok((get_dhcpd_range_end(1, 150, @ips) == 148));
	ok((get_dhcpd_range_end(1, 151, @ips) == 148));
	ok((get_dhcpd_range_end(1, 152, @ips) == 148));

	ok((get_dhcpd_range_end(1, 147, @ips) == 145));
	my $i=0;
	for($i=1; $i<100; $i++)
	{
		#ok((get_dhcpd_range_end(1, $i, @ips) == $i));
	} 

}

#test();
#test2();
test_get_dhcpd_range_end();

#my @array=qw( 222 231 235 240);
#print (firstidx{$_== 222}  @array)."\n";;
