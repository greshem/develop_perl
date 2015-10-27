#!/usr/bin/perl
%qzj_last_revsion= ( 
"linux"=>"1",
"petty_china"=>"3",
"include_structs_code_generator"=>"92",
"develop_mfc"=>"197",
"petty_new_site"=>"81",
"richtech-scripts_rpm"=>"2",
"develop_kernel"=>"2",
"volume_shadow_tools"=>"28",
"develop_python"=>"3",
"develop_cpp"=>"62",
"netware_emulator_73"=>"1159",
"octopus_agile"=>"50",
"system_initialization_win"=>"129",
"develop_ddk"=>"51",
"foreign_trade_management_sys"=>"37",
"doc"=>"5",
"develop_thread"=>"20",
"logtrans_srv_new_v5"=>"4",
"develop_wxwidgets_73"=>"79",
"global-4.4_logger"=>"61",
"sino_pet"=>"8",
"project_collaboration"=>"1939",
"11698666_v2"=>"18",
"linux2"=>"4",
"develop_php"=>"13",
"petty_china_new"=>"7",
"iso_index_and_search"=>"24",
"pkg_develop"=>"29",
"lmyunit"=>"40",
"develop_perl"=>"49",
"vim_common"=>"9",
"develop_perl_windows"=>"6",
"develop_wxwidgets"=>"105",
"doc_collaboration"=>"818",
"RealMonitor"=>"240",
"PartImage"=>"296",
);

#print %out 

use Cwd;
#print 
$dir=getcwd;
#在svn服务器上面.
if($dir=~/home\//)
{
	for $each (keys( %qzj_last_revsion))
	{
		if(-d $each)
		{

			my $ver=$qzj_last_revsion{$each};
			my $max_ver= get_max_rev_number_from_dir($each);
			if($max_ver lt $ver)
			{
				print " $each #已经更新过了\n";
				print " 原版本号 $ver, 最新版本号 ".$max_ver."\n";
			}
			else
			{
				#print "\#$each 正常\n";
				#print "rm -rf $each\n";
				print $each."\t".$max_ver."\n";
			}
		}
		else
		{
			print "# $each  项目不存在\n";
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

sub get_max_rev_number_from_dir($)
{
	(my $input_dir)=@_;

	use List::Util qw(first max maxstr min minstr reduce shuffle sum);

	use File::Basename;
	sub get_max_from_dir($)
	{
		(my $dir)=@_;
		@array=grep { -f } glob($dir."/*");

		@number=map  {$_=basename($_);$_}	 @array;

		return max(@number);
		
	}
	#$dir = shift or die("Usage: $0 iput_svn_root_dir\n");
	$item=get_max_from_dir("$input_dir/db/revs/0/");
	$item2=get_max_from_dir("$input_dir/db/revs/1/");
	$item3= get_max_from_dir("$input_dir/db/revs/");

	return max($item, $item2, $item3);
}
