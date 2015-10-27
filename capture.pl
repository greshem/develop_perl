#!/usr/bin/perl

use strict;
use warnings;

use IO::Socket::Packet;
use Socket::Packet qw(
   PACKET_OUTGOING
);

my $sock = IO::Socket::Packet->new( IfIndex => 0 )
   or die "Cannot create PF_PACKET socket - $!";

while( my ( $proto, $ifindex, $hatype, $pkttype, $addr ) = $sock->recv_unpack( my $packet, 8192, 0 ) ) {
   my ( $ts, $ts_usec ) = $sock->timestamp;
   printf "[%4d/%02d/%02d %02d:%02d:%02d.%06d] ", (localtime $ts)[5]+1900, (localtime $ts)[4,3,2,1,0], $ts_usec;

   # Reformat nicely for printing
   $addr = join( ":", map sprintf("%02x", ord $_), split //, $addr );

   if( $pkttype == PACKET_OUTGOING ) {
      print "Sent a packet to $addr";
   }
   else {
      print "Received a packet from $addr";
   }

   printf " of protocol %04x on interface %d:\n", $proto, $ifindex;

  # printf "  %v02x\n", $1 while $packet =~ m/(.{1,16})/sg;
}
