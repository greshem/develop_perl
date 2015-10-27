
#去search一下，找到一把Sys::HostIP、Sys::HostAddr、Net::Inetface等模块。第四种：

use Sys::HostAddr;
my $interface = Sys::HostAddr->new(ipv => '4', interface => 'br0');
print $interface->main_ip;


use Data::Dumper;
my $sysaddr = Sys::HostAddr->new();
print Data::Dumper->Dump([$sysaddr]);

my $string = $sysaddr->public();
print Data::Dumper->Dump([$string]);
 
my $aref = $sysaddr->interfaces();
print Data::Dumper->Dump([$aref]);
 
my $aref = $sysaddr->addresses();
print Data::Dumper->Dump([$aref]);

# 
my $href = $sysaddr->ip();
print Data::Dumper->Dump([$href]);
# 
my $ip = $sysaddr->first_ip();
print Data::Dumper->Dump([$ip]);
# 
my $main = $sysaddr->main_ip();
print Data::Dumper->Dump([$main]);
# 
