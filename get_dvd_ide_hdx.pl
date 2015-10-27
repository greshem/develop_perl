#!/usr/bin/perl

for $each (qw( hda hdb hdc hdd))
{
	#print $each."\n";
	if(is_dvd_iso($each))
	{
		print "#$each is dvd repo iso \n";
	}
}

sub is_dvd_iso($)
{
	(my $block)=@_;
	my $buf=`fdisk -l /dev/$block`;
	#print "XXXXXXXXXXXXXXX".$buf;
	if($buf=~/[1|2|3|4]... MB/)
	{
		#print "#$block is dvd iso \n";
		return $block;
	}
	return undef;
}
