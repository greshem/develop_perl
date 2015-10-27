# unpack("B32",pack("N",$convip)); 转成二进制
# 然后 通过  0ct("0b", $seg1) 转换成   short 
sub Ip_ANY  
{  
	my ($ip,$mask,$Ref,$para2) = @_;  
	my ($bin_ip,$bin_mask);  
	map {$bin_ip .= substr(unpack("B32",pack("N",$_)) , -8);} split (/\./,$ip);  
	map {$bin_mask .= substr(unpack("B32",pack("N",$_)) , -8);} split (/\./,$mask);  
	my $binwork = $bin_ip & $bin_mask;  
	my $convnetwork=oct('0b'.$binwork);  
	my $hostipbbit = 32 - index($bin_mask,"0");  
	return 0 if($hostipbbit > 10);  
	my $i = 0;  
	for ($i; $i < 2**$hostipbbit; $i ++)  
	{  
		my $convip = $convnetwork+$i;  
		my $bin_startip = unpack("B32",pack("N",$convip));  
		$ip = sprintf ("%d.%d.%d.%d",oct('0b'.substr($bin_startip,0,8)),oct('0b'.substr($bin_startip,8,8)),oct('0b'.substr($bin_startip,16,8)),oct('0b'.substr($bin_startip,24)));  
		#$Ref->{$ip} = $para2;  
		#&Debug("$ip IP: $Ref->{$ip} \n", 0);  
		print $ip."\n";
	}  
	return 0;  
}  


Ip_ANY("192.168.1.1", "255.255.255.0", undef, undef);


$a=100;

$b=$a
