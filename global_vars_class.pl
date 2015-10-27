#!/usr/bin/perl 
#全局变量的一个例子, 主要用户全局变量, 聚合成一个类. 
#注意这里用到是匿名的 $config hash.


#$a=new Config;
$a=Config->new();
$a->dump();
print ref($a)."\n";;

$tmp= $a->get_option();
print $tmp->{"Other"}->{"pcid"}."\n";
print $a->get_option()-> {"Other"}->{"pcid"}."\n";

$b= PcCode->new();
if($b->check($a))
{
	printf("ok, is success ful \n");
}
else
{
	print "not ok , 盗版 \n";
}

########################################################################
#机器码的类, 校验的类.
package PcCode;
sub new()
{	
	my $class=shift;
	my $self={};
	#$self->{"code"}="ffffffffff";
	$self->{"code"}="F89C4B4C1690B0E5";
	return bless $self, $class;
}

# 注意传入的参数, 这里传入了一个类了.
sub check($)
{
	(my $self,  $input)=@_;
	if($self->{"code"} eq  $input->get_option()->{"Other"}->{"pcid"} )
	{
		return 1;		
	}
	else
	{
		return undef;
	}
}

1;
########################################################################
package Config;
sub new()
{
	my $class=shift;
	my $self={};
	my $config={};

	&Config::WriteToFs(); 
	&Config::load_files();
#	&Config::dump();
	return bless $self, $class;
}
sub Config::get_option()
{
	return $config->{"option.ini"};
}

sub Config::load_files {
	$config->{"wks.ini"}= load_ini_file("wks.ini");
	$config->{"option.ini"}= load_ini_file("option.ini");
}
sub Config::load_ini_file($)
{
	$ini={};
	(my $file)=@_;
	open(FILE, $file)or die("open file error\n");
	while(<FILE>)
	{
		chomp;
		if(/\s*\[\s*(\S+)\s*\]\s*/)
		#if(/[\s*(\S+)\s*]/)
		{
			$current_sec=$1;
			$ini->{$current_sec}={};
		}
		elsif(/\s*(\S+)\s*=\s*(\S*)\s*/)
		{
			$ini->{$current_sec}->{$1}=$2;
		}
	}
	return $ini
}
sub Config::dump()
{
	Config::print_sections($config->{"wks.ini"});
	Config::print_sections($config->{"option.ini"});
	Config::print_sections_values($config->{"wks.ini"});
}


#打印匿名 $hash 一层
sub Config::print_sections($)
{
	 #%template= %{$wks{$mac}};
	(my $ini)=@_;
	foreach (keys(%{$ini}))
	{
		print "[$_]\n";
	}
}

#打印匿名 $hash 两层
sub Config::print_sections_values($)
{
	(my $ini)=@_;
	foreach $section (keys(%{$ini}))
	{
		print "[$section]\n";
		my $key_value=$ini->{$section};
		foreach $ini_key (sort(keys(%{$key_value})))
		{
			print $ini_key."=".$key_value->{$ini_key}."\n";	
		}
	}

}

#数据部分. 一起带在代码里面.
sub Config::WriteToFs()
{
	open(WKS, "> wks.ini" ) or die("create wks.ini failuer \n");
	print WKS <<EOF
[00E012334435] \nWksName=WKS008 \n;IpAddr=172.16.10.103 \nIpAddr=127.0.0.1 \nEnable=1 \nNetmask=255.255.255.0 \nGateway= \nBootCard= \nBootDisk=2*0 \nBootServer= \nHwcName= \nWksGroup= \nWksPath=/tmp/ \nDNSMaster= \nDNSSubman= \nRemoteBoot=1 \nClientCache=0 \nHotBackup=0 \nUserSelect=0 \nMenuBootHD=1 \nDiskGroup=

[000C2942AB8E] \nWksName=WKS002 \nIpAddr=192.168.1.12 \nEnable=1 \nNetmask=255.255.255.0 \nGateway= \nBootCard= \nBootDisk=VM*0 \nBootServer= \nWksGroup= \nWksPath=/tmp/ \nDNSMaster= \nDNSSubman= \nRemoteBoot=1 \nClientCache=0 \nHotBackup=0 \nUserSelect=0 \nMenuBootHD=1 \nDiskGroup= \nMemo=

EOF
;
	close(WKS);

	open(OPTION, "> option.ini") or die("create option.ini faulure \n");
	print OPTION  <<EOF

[Other] \nSetLog=1 \npcid=F89C4B4C1690B0E5 \npctype=0 \nLogError=1 \nManPass=F014936A8B8900F8F014936A8B8900F8888E4B176E93CD9D888E4B176E93CD9D \nSuperPass= \nDhcpReplyNum=26 \nDhcpOption60=0 \nClientPass= \nAutoAddRecov=1 \nSelectTimeOut=22 \nNetMask=1 \nGateway=0 \nClientCache=1 \nHotBackup=1 \nReadWriteData=1 \nReadWriteSpeed=1 \nBootServer=0 \nBackupServer=1 \nWksGroup=0 \nWksPath=0 \nBootCard=0 \nBootDisk=0 \nServer=0 \nHwc=0 \nBootType=0 \nConfigUserID=0 \nMemo=1 \n[SuperUser] \nUserName=Admin \nPassword= \n[AutoWks] \nAddType=1 \nPreName=WKS \nNameCode=3 \nTemplate=WKS002 \n[AllocIP] \nDynamicIP=0 \n; \nIpList=172.16.10.232 \n; \nStartIP=172.16.10.100 \n; \nStopIP=172.16.10.200 \n; \nNetCartList=172.16.10.232|eth0|

IpList=172.16.10.105
StartIP=172.16.10.11
StopIP=172.16.10.254
NetCartList=172.16.10.105|eth0|

[ServerSync]
IsMaster=1
Enable=1
SyncClientInfo=1
AutoSyn=1
[DefaultPath]
RecovPath=/tmp/
LogPath=/usr/share/rtiosrv/./rtiosrv.log
[LimitSpeed]
LimitSpeed=0

EOF
;
	close(OPTION);
}


