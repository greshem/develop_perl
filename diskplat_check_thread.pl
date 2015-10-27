#!/usr/bin/perl
my %thread=(
"INTER_VDiskSyncThread"=>"1",
"MsgServerListenThread"=>"1",
"PXEServiceThread"=>"1",
"ClientUdpThread"=>"1",
"IOCM_DetectEncryLockThread"=>"1",
"IOCM_IoWorkerThread"=>"1",
"RecvParamThread"=>"1",
"CLN_ConnectServerThread"=>"1",
"PXEBootThread"=>"1",
"NDSM_AcceptClientConnectThread"=>"1",
"PXEWorkerThread"=>"1",
"CScanSocketTimer"=>"1",
"IOCM_AcceptClientConnectThread"=>"1",
"CReadKeyTimer"=>"1",
"SAT_AcceptServerConnectThread"=>"1",
"CDbcpSrvThread"=>"1",
"CDbcpSrvThread44444"=>"1",
);

my $pid= `pgrep diskplat `;

my %tmp;
open(PIPE, "./pstack.sh  $pid|");
for(<PIPE>)
{
	if($_=~/.*\s+(\S+)::Entry.*/)
	{
		#print $1."\n";;
		$tmp{$1}=1;
	}
}


for(keys(%thread))
{
	if(!defined($tmp{$_}))
	{
		print "#Error: $_ 线程  不存在\n";
	}
}

for(keys(%tmp))
{
	if(!defined($thread{$_}))
	{
		print "#Error: 多出  $_ 线程 \n";
	}
}


exit(0);
