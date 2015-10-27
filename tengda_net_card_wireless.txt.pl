#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
rt2800usb              22509  0 
rt2x00usb              19711  1 rt2800usb
rt2800lib              52393  1 rt2800usb
rt2x00lib              57912  3 rt2800lib,rt2x00usb,rt2800usb
mac80211              492420  3 rt2x00lib,rt2800lib,rt2x00usb
cfg80211              195764  2 mac80211,rt2x00lib
crc_ccitt              12573  1 rt2800lib


