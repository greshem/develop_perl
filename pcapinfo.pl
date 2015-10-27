#!/usr/bin/perl
use strict;
use Net::Pcap ':functions';
use Sys::Hostname;

my $has_io_interface = eval "use IO::Interface::Simple ':flags'; 1" || 0;

my(%devs, $err) = ();
my @devs = findalldevs(\%devs, \$err);

my $hostname = hostname();
my $aliases  = (gethostbyname($hostname))[1];

print "Host information\n", 
      "----------------\n", 
      "  Hostname      : $hostname\n";
print "  Aliases       : $aliases\n" if $aliases;
print "  Pcap version  : ", lib_version(), $/,
      $/, 
      "Devices information\n", 
      "-------------------\n";

for my $dev (@devs) {
    my $default = $dev eq lookupdev(\$err) ? "(default)" : '';

    print "Device $dev $default\n", 
          "  Description       : $devs{$dev}\n";

    print "  Link type         : ", linktype($dev), $/
        if $dev ne "any";

    if ($has_io_interface) {
        my $iface = IO::Interface::Simple->new($dev);

        if (defined $iface) {
            print "  Hardware address  : ", $iface->hwaddr,  $/ if $iface->hwaddr;
            print "  Network address   : ", $iface->address, $/ if $iface->address;
            print "  Network mask      : ", $iface->netmask, $/ if $iface->netmask;
            print "  Flags             : ", flags($iface),   $/;
        }
    }

    print $/;
}


sub linktype {
    my ($dev) = @_;
    my $linktype = "<can't get this information>";
    my $status = "";

    if (my $pcap = open_live($dev, 1024, 1, 0, \$err)) {
        $linktype = datalink_val_to_description(datalink($pcap));
        pcap_close($pcap);
    }

    if (-e "/sbin/mii-tool") {
        chomp($status = `/sbin/mii-tool $dev 2>/dev/null`);
        $status =~ s/$dev\:/,/;
    }

    return $linktype . $status
}


sub flags {
    my ($iface) = @_;
    my $string = '';

    $string .= "up "          if $iface->flags & &IO::Interface::IFF_UP;
    $string .= "running "     if $iface->is_running;
    $string .= "broadcast "   if $iface->is_broadcast;
    $string .= "debug "       if $iface->flags & &IO::Interface::IFF_DEBUG;
    $string .= "loopback "    if $iface->is_loopback;
    $string .= "p-to-p "      if $iface->is_pt2pt;
    $string .= "notrailers "  if $iface->is_notrailers;
    $string .= "noarp "       if $iface->is_noarp;
    $string .= "promiscuous " if $iface->is_promiscuous;
    $string .= "multicast "   if $iface->is_multicast;
    $string .= "allmulti "    if $iface->flags & eval { &IO::Interface::IFF_ALLMULTI };
    $string .= "master "      if $iface->flags & eval { &IO::Interface::IFF_MASTER };
    $string .= "slave "       if $iface->flags & eval { &IO::Interface::IFF_SLAVE };
    $string .= "portsel "     if $iface->flags & eval { &IO::Interface::IFF_PORTSEL };
    $string .= "automedia "   if $iface->flags & eval { &IO::Interface::IFF_AUTOMEDIA };

    return $string
}

__END__

=head1 NAME

pcapinfo - Prints detailed information about the network devices

=head1 SYNOPSIS

    pcapinfo

=head1 OPTIONS

None.

=head1 DESCRIPTION

B<pcapinfo> prints detailed information about the network devices 
and Pcap library available on the current host. Here is an example: 

    Host information
    ----------------
      Hostname      : fangorn.maddingue.net
      Aliases       : fangorn.local fangorn
      Pcap version  : libpcap version 0.8.3

    Devices information
    -------------------
    Device eth0 (default)
      Description       : No description available
      Link type         : Ethernet, no autonegotiation, 10baseT-HD, link ok
      Hardware address  : 00:0c:6e:0a:c3:ca
      Network address   : 10.0.1.51
      Network mask      : 255.255.255.0
      Flags             : up running broadcast multicast

    Device eth1
      Description       : No description available
      Link type         : Ethernet, no autonegotiation, 10baseT-HD, link ok
      Hardware address  : 00:26:54:0a:d8:4d
      Network address   : 192.168.1.51
      Network mask      : 255.255.255.0
      Flags             : up running broadcast multicast

The device marked as C<"(default)"> is the one returned when calling 
C<Net::Pcap::lookupdev()>

Some information like the link type can only be gathered with administrative 
privileges. 

=head1 AUTHOR

SE<eacute>bastien Aperghis-Tramoni, E<lt>sebastien@aperghis.netE<gt>

=head1 COPYRIGHT

Copyright (C) 2005, 2006, 2007, 2008 SE<eacute>bastien Aperghis-Tramoni. 
All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
