#!/usr/bin/perl
sub get_target()
{
	use Cwd;
	use File::Basename;
	$pwd=getcwd();
	print $pwd."\n";;
	$targetname=basename($pwd);
	#print $targetname."\n";;
	return $targetname;
}

#mfc
sub is_mfc_plat()
{
	if( -f "StdAfx.h")
	{
		return 1;
	}
	return undef;
}

sub get_rc()
{
	my $ret_str;
	@rc=grep{-f } glob("*.rc");
	for $each(@rc)
	{
		$ret_str="<win32-res>".$each."</win32-res>\n";
	}
	return $ret_str;
}


sub gen_bakefile()
{
	$target=get_target();
	$res_tag=get_rc();

	open(FILE, ">build.bkl") or die("Open file error $!\n");
    #<include file="presets/wx.bkl"/>
	print FILE <<EOF
<?xml version="1.0" ?>
<!-- \$Id: bakefile_quickstart.txt,v 1.5 2006/02/11 18:41:11 KO Exp \$ -->
<makefile>
	<exe id="$target"> 
	<app-type>gui</app-type>
	<cxxflags>/DWINDOWSCODE</cxxflags>
	
	<include>D:\\usr\\include</include>
	<include>D:\\usr\\include\\msvc</include>
	<lib-path>D:\\usr\\lib</lib-path>
	<lib-path>D:\\usr\\lib</lib-path>
	<!-- <sys-lib>UnitCode</sys-lib> --> 
	<!-- <include>D:\\usr\\include\\lmyunit</include> -->
	<!-- <app-type>console</app-type> --> 

	<define>wxUSE_OLE</define>
	<define>WXUSINGDLL</define>
	<cxxflags>/D_UNICODE</cxxflags>
	<cxxflags>/D__WXMSW__</cxxflags>
	<cxxflags>/DWINDOWSCODE</cxxflags>
	<cxxflags>/D__WXDEBUG__</cxxflags>
	<cxxflags>/MTd</cxxflags>
    <sys-lib>wxmsw28ud_core</sys-lib>
	<sys-lib>wxbase28ud_net</sys-lib>
    <sys-lib>wxbase28ud</sys-lib>
	<sys-lib>wxtiffd</sys-lib>
	<sys-lib>wxjpegd</sys-lib>
	<sys-lib>wxpngd</sys-lib>
	<sys-lib>wxzlibd</sys-lib>
	<sys-lib>wxregexud</sys-lib>
	<sys-lib>wxexpatd</sys-lib>


	$res_tag

	<cxxflags>/DWIN32</cxxflags>
	<cxxflags>/D_DEBUG</cxxflags>			
	<cxxflags>/D_WINDOWS</cxxflags>
	<cxxflags>/DNOPCH</cxxflags>   
	<sys-lib>winmm</sys-lib>
	<sys-lib>comctl32</sys-lib>
	<sys-lib>rpcrt4</sys-lib>
	<sys-lib>wsock32</sys-lib>
	<sys-lib>odbc32</sys-lib>
	<sys-lib>kernel32</sys-lib>
	<sys-lib>user32</sys-lib>
	<sys-lib>gdi32</sys-lib>
	<sys-lib>winspool</sys-lib>
	<sys-lib>comdlg32</sys-lib>
	<sys-lib>advapi32</sys-lib>
	<sys-lib>shell32</sys-lib>
	<sys-lib>ole32</sys-lib>
	<sys-lib>oleaut32</sys-lib>
	<sys-lib>uuid</sys-lib>
	<sys-lib>odbccp32</sys-lib>

	<sources>\$(fileList('*.cpp'))</sources> 
     </exe>
</makefile>


EOF
;	
	if( -f "build.bkl")
	{
	print ("#build.bkl 文件生成\n");
	}
}

gen_bakefile();

if($^O=~/linux/i)
{
	print "/bin/gen_bakefile_bkl.pl\n";
}
else
{
	print "gen_bakefile_bkl.pl\n";
}
print "#选用 msvc 的输出格式\n";
print "nmake /f makefile.vc\n";

