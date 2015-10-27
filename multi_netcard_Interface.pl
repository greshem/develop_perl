use strict;
use Socket;
use Net::DHCP::Packet;
use Net::DHCP::Constants;
use POSIX qw(setsid strftime);
use IO::Socket::INET;
use IO::Interface qw(:flags);
use IO::Interface::Simple;
use Net::Netmask;
use DBI;
use Sys::Syslog qw(:DEFAULT setlogsock);
use XML::Simple;

# Create a flag to force daemon to stop
my $time_to_die = 0;

# Create two scalars one to hold the interface we're on and another to hold the netid
my $iface;
my $defaultnetid;

# Convert the netids to interface names
my %ifaces;
my @interfaces = IO::Interface::Simple->interfaces;
	$defaultnetid = $_;

	my $netblock = new Net::Netmask($defaultnetid);	

for(@interfaces)
{
	print $_."\n";;
}
	# map {
	# 	if ($_->address && $netblock->match($_->address)) {
	# 		if (!($_ =~ m/:/)) {
	# 			$ifaces{$_} = $defaultnetid;
	# 		}
	# 	}
	# } @interfaces;
