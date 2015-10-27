#!/usr/bin/perl  
use Net::IP;
  
#my $ip = new Net::IP ('193.0.1/24') or die (Net::IP::Error());
#my $ip = new Net::IP ('193.0.1.1') or die (Net::IP::Error());
my $ip = new Net::IP ('193.0.1.1 + 512') or die (Net::IP::Error());

my $ip2=	 new Net::IP ('193.0.1.1 + 256') or die (Net::IP::Error());
 

print ("IP  : ".$ip->ip()."\n");
print ("Short: ".$ip->short()."\n");
print ("Bin : ".$ip->binip()."\n");
print ("Int_ip : ".$ip->intip()."\n");
print ("Mask: ".$ip->mask()."\n");
print ("Last_ip: ".$ip->last_ip()."\n");
print ("PrefixLen : ".$ip->prefixlen()."\n");
print ("Size: ".$ip->size()."\n");
print ("ipType: ".$ip->iptype()."\n");
print ("Reverse_ip:  ".$ip->reverse_ip()."\n");



#是否重叠, 下面的case 必然重叠.
sub overlaps()
{

	use Net::IP;
	my $ip = new Net::IP ('193.0.1.1 + 512') or die (Net::IP::Error());
	my $ip2=	 new Net::IP ('193.0.1.1 + 256') or die (Net::IP::Error());

	$result=$ip->overlaps($ip2);
	print "$result \n";
	#assert  $IP_B_IN_A_OVERLAP  = -2;
	# $IP_PARTIAL_OVERLAP (ranges overlap) 
	# $IP_NO_OVERLAP      (no overlap)
	# $IP_A_IN_B_OVERLAP  (range2 contains range1)
	# $IP_B_IN_A_OVERLAP  (range1 contains range2)
	# $IP_IDENTICAL       (ranges are identical)
	# undef               (problem)

}
