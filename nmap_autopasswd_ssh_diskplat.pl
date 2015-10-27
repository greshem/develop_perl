#!/usr/bin/perl
#输入的参数是  eth0 eth1  , 不同的网卡决定了不同的网段. 
use strict;

my $eth=shift;
if(!defined($eth))
{
	$eth="eth0";
}
system("cat /dev/null >   /tmp/wks_append.ini");

my @srvs=get_localnet_ssh_srv($eth);

deal_ssh_yes(@srvs);
deal_ssh_auto_passwd(@srvs);
deal_hosts_and_distri(@srvs);
deal_sshd_config_DNS(@srvs);
deal_set_dhcpd(@srvs);
deal_uname(@srvs);

#
deal_diskplat_wks_ini_append(@srvs);


########################################################################

#本地网络开启ssh 端口的都是潜在的 , diskplat 服务器. 
sub get_localnet_ssh_srv($)
{
	(my $eth)=@_;
	my $ip =get_ip_address($eth);
	my @tmp=split(/\./, $ip);
	my $netrange= $tmp[0].".".$tmp[1].".".$tmp[2].".0";

	print("nmap -oX /tmp/nmap_ssh_autopass.xml  -p 22  $netrange/24  \n") ;

	my @diskplat_srvs;
	if( ! -f "/tmp/nmap_ssh_autopass.xml")
	{
		system("nmap -oX /tmp/nmap_ssh_autopass.xml  -p 22  $netrange/24  ") ;
	}

	my $port_is_open;
	my $ip;
	open(FILE, "/tmp/nmap_ssh_autopass.xml") or die("open /tmp/nmap.xml error\n");
	for(<FILE>)
	{
		if($_=~/^\<host\s+/)
		{
			#print "GGGGGGGGGG $_\n";
			$port_is_open=undef;
			$ip=undef;
		}
		elsif($_=~/protocol.*tcp.*portid.*state.*open/)
		{
			$port_is_open=1;
			#print $_."#####$_\n";
			push(@diskplat_srvs, $ip);
		}
		elsif($_=~/address.*addr="(.*)".*addrtype="ipv4".*/)
		{
			$ip=$1;
		}
	}
	close(FILE);

	return @diskplat_srvs;
}


#==========================================================================
#去除第一次登陆的时候的yes 
sub deal_ssh_yes(@)
{

	print "\n#deal_ssh_yes========================================================================== \n";
	(my  @diskplat_srvs)=@_;

	for(@diskplat_srvs)
	{
		print ("/root/develop_bash/ssh_no_passwd_key_yes.expect $_\n");
	}
}


#==========================================================================
#登陆不要密码了.
sub deal_ssh_auto_passwd(@)
{

	print "\n#deal_ssh_auto_passwd========================================================================== \n";
	(my  @diskplat_srvs)=@_;

	for (@diskplat_srvs)
	{
		print ("cat /root/.ssh/id_rsa.pub |  sshpass -p passwd  ssh   $_ cat '>>' /root/.ssh/authorized_keys \n "); 
	}
}


#==========================================================================
#wks.ini 添加一下. 
sub deal_diskplat_wks_ini_append(@)
{

	print "\n#deal_wks_ini_append========================================================================== \n";
	(my  @diskplat_srvs)=@_;

	for(@diskplat_srvs)
	{
		print "#IpAddr=$_\n";
		gen_wks_append($_);
	}
	print "#/tmp/wks_append.ini has generated \n" ;
	for(@diskplat_srvs)
	{
		print ("cat /tmp/wks_append.ini | ssh -v  $_ cat '>>' /usr/share/diskplat/wks.ini\n");
		print ("ssh $_ service diskplat restart \n");
	}
}
#==========================================================================
# 每个/etc/hosts 里面添加 
sub deal_hosts_and_distri(@)
{


	print "\n#deal_hosts_and_distri========================================================================== \n";
	(my  @diskplat_srvs)=@_;

	open(HOSTS, "> /tmp/nmap_hosts.txt");
	for(@diskplat_srvs)
	{
		my @array=split(/\./, $_);
		print HOSTS $_."\t"."diskplat_".$array[3]."\n";	
	}
	close(HOSTS);

	for(@diskplat_srvs)
	{
		print "ssh $_  sed '/diskplat_/g' /etc/hosts -i \n" ;
	}



	for(@diskplat_srvs)
	{
		print ("cat /tmp/nmap_hosts.txt | ssh  $_ cat '>>'  /etc/hosts \n");

	}

}

########################################################################
sub deal_sshd_config_DNS(@)
{
	print "\n#deal_sshd_config_DNS========================================================================== \n";
	(my  @diskplat_srvs)=@_;

	for(@diskplat_srvs)
	{
		print "ssh $_  sed '/UseDNS/{s/.*/UseDNS no/g}' -i  /etc/ssh/sshd_config  \n";
	}

}

#使他 从 动态获取ip  dhcpd
sub deal_set_dhcpd(@)
{
	print "\n#deal_set_dhcpd========================================================================== \n";
	(my  @diskplat_srvs)=@_;

	for(@diskplat_srvs)
	{
		print "ssh $_  set_boot_from_dhcpd  \n";
	}

}


#cat /etc/sysconfig/network
#NETWORKING=yes
#HOSTNAME=transwork
sub deal_uname(@)
{
	print "\n#deal_uname========================================================================== \n";
	(my  @diskplat_srvs)=@_;

	
	for(@diskplat_srvs)
	{
		my @tmp=split(/\./, $_);
		my $dest_name="diskplat_".$tmp[3];

		print "ssh $_  sed '/HOSTNAME/{s/.*/HOSTNAME=$dest_name/g}' -i  /etc/sysconfig/network \n";
		print "ssh $_  hostname $dest_name \n";
	}
	
}




########################################################################
#subfunction 

sub get_ip_address($) 
{
	use Socket;
	require 'sys/ioctl.ph';
    my $pack = pack("a*", shift);
    my $socket;
    socket($socket, AF_INET, SOCK_DGRAM, 0);
    ioctl($socket, SIOCGIFADDR(), $pack);
    return inet_ntoa(substr($pack,20,4));
};

sub gen_wks_append($)
{
	(my $ip)=@_;
	my  $id=int(rand(10000));
	open(WKS_INI, ">>/tmp/wks_append.ini") or die("open wks_append.ini error\n");
print WKS_INI <<EOF

[AABBCCDDEEFF]
WksName=WKS00$id
IpAddr=$ip
Enable=1
Netmask=255.255.255.0
Gateway=
BootCard=
BootDisk=VM*0
BootServer=
HwcName=
WksGroup=
WksPath=/tmp/
DNSMaster=
DNSSubman=
RemoteBoot=1
ClientCache=0
HotBackup=0
UserSelect=0
MenuBootHD=1
DiskGroup=
EOF
;
	close(WKS_INI);
}
