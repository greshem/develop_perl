#!/usr/bin/perl
%rich_last_revsion=(
"anti_arp_attack" => 10,
bt2_client => 9,
bt_vdisk_drv => 5,
data_collecting => 9,
dev_ctrl_interface => 21,
diskless_clntools => 6,
diskless_clntools2 => 23,
diskless_linux => 197,
diskless_oem => 1,
diskless_rich => 536,
dlxp_bootldr => 23,
dlxp_founder => 1,
dlxp_help => 1,
dlxp_tools => 8,
dlxp_windrv => 27,
dos_hotbackup => 9,
dos_menu => 2,
gameupdate_bt => 20,
hp_register => 34,
industry_addition => 40,
io_device_manager => 210,
netware_emulator => 64,
octopus_svdisk => 12,
personal_disk => 17,
remote_tool => 10,
rich_ad_system => 115,
rich_addvalue => 17,
rich_addvalue2 => 140,
rich_backup => 57,
rich_common_lib => 1,
rich_gpxe => 13,
rich_manager => 71,
rich_manager_cp => 478,
rich_netclone2 => 97,
rich_ntfs_lib => 72,
rich_octopus3 => 267,
rich_protect => 13,
rich_register => 40,
rich_servercontrol => 97,
rich_test_docs => 16,
richcgo => 12,
richdlxp => 87,
richdlxp_cp => 443,
richgau10 => 30,
rt_gameupdate_bt => 1,
stock_info => 2,
super_cgo => 5,
training => 2,
virtual_desk_system => 241,
web_cs => 2,
web_daohang => 1,
web_gamemenu => 934,
web_office => 1,
web_richbar => 1,
web_richtech => 2,
ww_btupdate => 220,
ww_centmanager => 181,
ww_frameman => 1630,
ww_gamemenu => 105,
ww_gamesync => 139,
ww_gmclient => 255,
ww_interface => 115,
ww_netclone => 147,
ww_netdisk => 5,
ww_secucenter => 39,
fulldisk =>  28 ,
police_login => 179  ,
reg_system_srv =>0   ,
remote_manager_system=>2996  ,
remote_manager_system__copy_   => 1789 ,
rich_bt2  		=> 609 ,
rich_octopus    => 2559  ,
rich_octopus3x  => 639 ,
rich_rms =>781  ,
web_register => 53  ,
);

use Cwd;

#print 
$dir=getcwd;
#在svn服务器上面.
if($dir=~/home\//)
{
	for $each (keys( %rich_last_revsion))
	{
		if(-d $each)
		{
			my $ver=$rich_last_revsion{$each};
			if( new_than_this_version( $each."/db/revs/", $ver))
			{
				print " $each #已经更新过了\n";
			}
			else
			{
				print "\#$each 正常\n";
				print "rm -rf $each\n";
			}
		}
		else
		{
			#print "# $each  项目不存在\n";
		}
	}
}
else
{
	print "不在svn 存储库 退出 \n";
}

sub new_than_this_version($$)
{
	my ($dir, $cur_version )=@_;
	$next_ver=$cur_version+1;
	if( -f $dir."/".$next_ver)
	{
		return 1;
	}
	return undef;	
}



