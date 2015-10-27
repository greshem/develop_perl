#!/usr/bin/perl
our $g_exe;
our $g_rc;
our $g_cxx;
our $g_ldflags;


@vcprojs=glob("*.vcproj");
@tmp=glob("*.VCPROJ");
push(@vcprojs, @tmp);

$vcproj_file=shift(@vcprojs);

if(  defined($vcproj_file) )
{
}
else
{
	die("#程序退出: 当前目录 没有 .vcproj 文件\n");
}



deal_with_one_vcproj_file($vcproj_file);

sub deal_with_one_vcproj_file($)
{
	(my $vcproj_file)=@_;
	(my $name)=($vcproj_file=~/(.*)\.[VCPROJ|vcproj]/);
	$g_exe="	<exe id = \"$name\">\n";
	logger("获取到 g_exe $name\n");

	my $output_bkl=$name.".bkl";
	open(BKL, "> ".$output_bkl) or die("open file $output_bkl 错误, $!\n");

	parse_vcproj_file($vcproj_file);

	my $tmp_str=gen_bkl_dsp_tag_start();
	print BKL $tmp_str;
	$tmp_str=gen_bkl_dsp_tag_mid();
	print BKL  $tmp_str;
	$tmp_str=gen_bkl_dsp_tag_end();
	print BKL $tmp_str;
	close(BKL);

	return $output_bkl

}
sub parse_vcproj_file($)
{
	#$g_exe="";
	$g_rc="";
	$g_cxx="";
	$g_ldflags="";

	my $in_cl=undef;;
	my $in_link=undef;;
	my $debug_version=1; #编译的时候默认选择 调试模式.
	(my $filename) = @_;

	open(FILE, $filename) or die("open File error $!\n");
	for(<FILE>)
	{
		chomp;
		if($_=~/Name="VCLinkerTool"/)
		{
			$in_cl=undef;
			$in_link=1;
		}
		elsif($_=~/Name="VCCLCompilerTool"/)
		{
			$in_cl=1;
			$in_link=undef;
		}
		elsif($_=~/\<\/Configuration\>/)
		{
			logger("一个配置项 结束\n");
			$debug_version=undef;
		}
		elsif ($_=~ /RelativePath="(.*\.rc)"/)
		{
			logger("资源文件是 $1\n");
			my $g_rc .="	<win32-res> $1 </win32-res>\n";
		}


		if($in_cl && $debug_version)
		{
			get_cl_exe_cxxflags_option($_);
		}
		if($in_link && $debug_version )
		{
			get_link_exe_ldflags_option($_);
		}
	}

}

#***************************************************************************
# Description	
# @param 	
# @return 	
#==========================================================================
#从vcproj里面摘录 的选项.
# Name="VCCLCompilerTool"
# OmitFramePointers="true"
# AdditionalIncludeDirectories="d:\usr\include"
# PreprocessorDefinitions="WIN32;NDEBUG;_WINDOWS" | 宏.
# RuntimeLibrary="2"							  | mtd md 等.
# TreatWChar_tAsBuiltInType="false"
# UsePrecompiledHeader="0"						  |/Yu
# WarningLevel="3"
# Detect64BitPortabilityProblems="true"
# DebugInformationFormat="3"					  |pdb
# AdditionalOptions="/DWINDOWSCODE /D_AFXDLL /D_MBCS /MDd /DWIN32 /D_DEBUG /D_WINDOWS /DNOPCH"

#***************************************************************************/
sub get_cl_exe_cxxflags_option($)
{
	my($line)=@_;
	#$g_cxx;
	if($line=~/PreprocessorDefinitions=\"(.*)\"/)
	{
		my $macro_str=$1;
		my @macros=split(/;/, $macro_str);
		for my $each (@macros)
		{
			$g_cxx.="<cxxflags> /D $each </cxxflags>\n";
			logger("cl_exe MACRO 选项 $each\n");
		}
	}
	elsif($line=~/RuntimeLibrary=\"(\d+)\"/)
	{
	}
	elsif($line=~/DebugInformationFormat=\"(\d+)\"/)
	{
		logger("cl_exe: 调试pdb文件  DebugInformationFormat $1\n");
	}
	elsif($line=~/AdditionalOptions=(.*)/)
	{
		$line_data=$1;
		$line_data=~s/\/D /\/D-/g; 
		my @array=split(/\s+/, $line_data );
		for(@array)
		{
			if(($_=~/^\//) )
			{
				$_=~s/\/D-/\/D /; #替换回来.
				$g_cxx.="	<cxxflags> $_ </cxxflags>\n";
				logger("cl_exe 选项 $each\n");
			}
		}
	}
	elsif($line=~/AdditionalIncludeDirectories=\"(.*)\"/)
	{
		my $include_str=$1;
		my @includes=split(/;/, $include_str);
		for my $each (@includes)
		{
			$g_cxx.="<cxxflags> /I \"$each\" </cxxflags>\n";
			#$g_cxx.="<include>$each </include>\n"; #或者用这个.
			logger("cl_exe include 选项 $each\n");
		}

	}

}
#***************************************************************************
# Description	
# @param 	
# @return 	
#==========================================================================
# Name="VCLinkerTool"
# AdditionalOptions="/INCREMENTAL:NO /NOLOGO /NODEFAULTLIB:LIBCMTD.lib /DEBUG /SUBSYSTEM:WINDOWS /MACHINE:X86"
# AdditionalDependencies="wsock32.lib shlwapi.lib"
# AdditionalDependencies="winmm.lib comctl32.lib rpcrt4.lib wsock32.lib odbc32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib     advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbccp32.lib"

# AdditionalLibraryDirectories="D:\usr\lib"
# OutputFile="$(OutDir)/SlimFTPd.exe"
# LinkIncremental="1"
# SubSystem="2"
# OptimizeReferences="2"
# EnableCOMDATFolding="2"
# OptimizeForWindows98="1"
# SetChecksum="true"
# TargetMachine="1"

#***************************************************************************/
sub get_link_exe_ldflags_option($)
{
	#$g_ldflags
	my($line)=@_;
	if($line=~/AdditionalDependencies=\"(.*)\"/)
	{
		$libs_str=$1;
		@lib=split(/\s+/, $libs_str);
		for my $each (@lib)
		{
			$g_ldflags.="<sys-lib> $each </sys-lib>\n";
			logger("link_exe 静态库项 $each\n");
		}
	}
	elsif($line=~/AdditionalOptions=\"(\d+)\"/)
	{
		$ld_str=$1;
		@ld=split(/\s+/, $ld_str);
		for my $each(@ld)
		{
			$g_ldflags.= "	<ldflags> $each </ldflags>\n";
		}
	}
	elsif($line=~/AdditionalLibraryDirectories=(.*)/)
	{
		$lib_str=$1;
		@lib=split(/;/, $lib_str);
		for my $each (@lib)
		{
			$g_ldflags.="<lib-path>$each</lib-path>"
		}	
	}
	elsif($line=~/SubSystem=\"(\d+)\"/)
	{
	}
	elsif($line=~/TargetMachine=\"(\d+)\"/)
	{
	}
}

########################################################################
#bakefile xml 文件的头部.
sub gen_bkl_dsp_tag_start()
{
	my $header_str= <<EOF
<?xml version="1.0" ?>
<!-- \$Id: bakefile_quickstart.txt,v 1.5 2006/02/11 18:41:11 KO Exp \$ -->
<makefile>
EOF
; 
	print $header_str;
	return $header_str;
} 


########################################################################
#输出: 项目的名称, 库路径, include路径, cl.exe 的选项 , link.exe 的选项.
#
sub gen_bkl_dsp_tag_mid()
{

	$g_cxx=check_cxxflags_str($g_cxx);
	$g_ldflags=check_ldflags_str($g_ldflags);

	print $g_exe."\n";
	my $mid_str.= $g_exe."\n";


	print $g_rc."\n";
	$mid_str.= $g_rc."\n";

	print $g_cxx."\n";
	$mid_str.= $g_cxx."\n";

	print $g_ldflags."\n";
	$mid_str.= $g_ldflags."\n";

	return $mid_str;
}

sub check_ldflags_str($)
{
	(my $ret_str)=@_;
	if($ret_str!~/\/DEBUG/i) #生成pdb
	{
		$ret_str.="<ldflags>/DEBUG</ldflags>\n";
	}

	if($ret_str!~/\/SUBSYSTEM/i) #子系统.
	{
		$ret_str.="<ldflags>/SUBSYSTEM:WINDOWS</ldflags>\n";
	}

	if($ret_str!~/\/MACHINE/i) #
	{
		$ret_str.="<ldflags>/MACHINE:X86</ldflags>\n";
	}
	if($ret_str!~/\/INCREMENTAL/i) #
	{

		$ret_str.="<ldflags>/INCREMENTAL:NO</ldflags>\n";
	}
	if($ret_str!~/\/NOLOGO/i) #
	{
		$ret_str.="<ldflags>/NOLOGO</ldflags>\n";
	}
	#检查常见的lib库.
	for $each_lib (qw( winmm comctl32 rpcrt4 wsock32 odbc32 kernel32 user32 gdi32 winspool comdlg32 advapi32 shell32 ole32 oleaut32 uuid odbccp32  ))
	{
		if($ret_str!~/sys-lib.*$each_lib/)	
		{
			$ret_str.="<sys-lib>$each_lib</sys-lib>\n";
		}
	}
	return $ret_str;
}

sub check_cxxflags_str($)
{
	(my $ret_str)=@_;
	for my $each  qw(/DNOPCH  /DWIN32 /DWINDOWSCODE /D_AFXDLL /D_DEBUG			/D_MBCS /D_WINDOWS)
	{
	if($ret_str!~/$each/) #
	{
		$ret_str.="<cxxflags>$each</cxxflags>\n";
	}
	}
	if($ret_str!~/\/MDd/) #
	{
		$ret_str.="<cxxflags>/MDd</cxxflags>\n";
	}
	if($ret_str!~/\/ZI/i) #
	{
		$ret_str.="<cxxflags>/ZI</cxxflags>\n";
	}

	return $ret_str;
}

########################################################################
#bakefile 的结束部分.
sub gen_bkl_dsp_tag_end()
{
	$end_str= <<EOF
	<sources>\$(fileList('*.cpp'))</sources>
	</exe>
</makefile>
EOF
;
	print $end_str;
	return $end_str;
}


sub logger($)
{
	(my $log_str)=@_;
	open(FILE, ">> all.log");
	print FILE $log_str;
	close(FILE);
}
