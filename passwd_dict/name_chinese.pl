#!/usr/bin/perl
#ÍõÐ¡Ã÷
my $first="wang";
my $sec="xiao";
my $third="ming";

print wxm($first, $sec, $third)."\n";
print Wxm($first, $sec, $third)."\n";;
print wangxm($first, $sec, $third)."\n";;
print Wangxm($first, $sec, $third)."\n";;

print WangXiaoMing($first, $sec, $third)."\n";;
print WANGXIAOMING($first, $sec, $third)."\n";;
print xmWANG($first, $sec, $third)."\n";;
print xmWang($first, $sec, $third)."\n";;
print xmwang($first, $sec, $third)."\n";;

print xmW($first, $sec, $third)."\n";;
print xmw($first, $sec, $third)."\n";;

print  WangWang($first, $sec, $third)."\n";;
print  Wangwang($first, $sec, $third)."\n";;
print  wangwang($first, $sec, $third)."\n";;
print  WANGWANG($first, $sec, $third)."\n";;

print  mingming($first, $sec, $third)."\n";;
print  Mingming($first, $sec, $third)."\n";;
print  MINGMING($first, $sec, $third)."\n";;
print  MingMing($first, $sec, $third)."\n";;

print  wangxiaoming($first, $sec, $third)."\n";;
print  Wangxiaoming($first, $sec, $third)."\n";;
print  WangXiaoMing($first, $sec, $third)."\n";;

print  xiaomingwang($first, $sec, $third)."\n";;
print  xiaomingWang($first, $sec, $third)."\n";;
print  XiaoMingWang($first, $sec, $third)."\n";;



sub mingming($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return   $ming.$ming;
}
sub Mingming($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return   ucfirst($ming).$ming;
}


sub MINGMING($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return   uc($ming).uc($ming);
}

sub MingMing($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return   ucfirst($ming).ucfirst($ming);
}

sub WANGWANG($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return   uc($wang).uc($wang);
}

sub Wangwang($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return   ucfirst($wang).lc($wang);
}


sub WangWang($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return   ucfirst($wang).ucfirst($wang);
}

sub wangwang($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return  $wang.$wang
}

sub xmW($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return get_first_char($xiao).get_first_char($ming).uc(get_first_char($wang));

}

sub xmw($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return get_first_char($xiao).get_first_char($ming).lc(get_first_char($wang));

}


sub xmWANG($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return get_first_char($xiao).get_first_char($ming).uc($wang);

}

sub xmWang($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return get_first_char($xiao).get_first_char($ming).ucfirst($wang);

}

sub xmwang($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return get_first_char($xiao).get_first_char($ming).lc($wang);

}


sub  WANGXIAOMING($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return uc($wang).uc($xiao).uc($ming);

}

sub WangXiaoMing($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return ucfirst($wang).ucfirst($xiao).ucfirst($ming);
}
sub xiaomingwang($$$) 
{ 
	(my $wang, my $xiao, my $ming)=@_;
	return ($xiao).($ming).($wang);
}

sub xiaomingWang($$$) 
{ 
	(my $wang, my $xiao, my $ming)=@_;
	return ($xiao).($ming).ucfirst($wang);
}

sub XiaoMingWang($$$) 
{ 
	(my $wang, my $xiao, my $ming)=@_;
	return ucfirst($xiao).ucfirst($ming).ucfirst($wang);
}

sub wangxiaoming($$$) 
{ 
	(my $wang, my $xiao, my $ming)=@_;
	return ($wang).($xiao).($ming);
}
sub Wangxiaoming($$$) 
{ 
	(my $wang, my $xiao, my $ming)=@_;
	return ucfirst($wang).($xiao).($ming);
}

sub WangXiaoMing($$$) 
{ 
	(my $wang, my $xiao, my $ming)=@_;
	return ucfirst($wang).ucfirst($xiao).ucfirst($ming);
}



sub Wangxm($$$)
{
	return ucfirst(wangxm(@_));
}
sub wangxm($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return $wang.get_first_char($xiao).get_first_char($ming);

}
sub Wxm($$$)
{
	return ucfirst(wxm(@_));
}
sub wxm($$$)
{
	(my $wang, my $xiao, my $ming)=@_;
	return get_first_char($wang).get_first_char($xiao).get_first_char($ming);
}
#print ucfirst($first);

#get_first_char($first);
sub get_first_char($)
{
	(my $input)=@_;
	my $str=substr($input, 0, 1);
	#print $str."\n";
	return $str;
}
