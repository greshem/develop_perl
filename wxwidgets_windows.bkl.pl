#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
<?xml version="1.0" ?>
<!-- $Id: bakefile_quickstart.txt,v 1.5 2006/02/11 18:41:11 KO Exp $ -->

<makefile>
    
    <include file="C:/wxWidgets-2.8.10/build/bakefiles/wxpresets/presets/wx.bkl"/>
        <exe id="MyApp">
            <app-type>gui</app-type>
			<cxxflags>/DWIN32</cxxflags>
			<cxxflags>/D_DEBUG</cxxflags>
			<cxxflags>/D__WXMSW__</cxxflags>
			<cxxflags>/DWINDOWSCODE</cxxflags>
			<cxxflags>/D__WXDEBUG__</cxxflags>
			<cxxflags>/D_WINDOWS</cxxflags>
			<cxxflags>/DNOPCH</cxxflags>
            <include>D:\usr\include</include>
			<include>D:\usr\include\msvc</include>
			<lib-path>D:\usr\lib\vc_lib</lib-path>
            <sys-lib>wxmsw28d_core</sys-lib>
            <sys-lib>wxbase28d</sys-lib>
			<sys-lib>wxtiffd</sys-lib>
			<sys-lib>wxjpegd</sys-lib>
			<sys-lib>wxpngd</sys-lib>
			<sys-lib>wxzlibd</sys-lib>
			<sys-lib>wxregexd</sys-lib>
			<sys-lib>wxexpatd</sys-lib>
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
            <sources>$(fileList('*.cpp'))</sources> 
        </exe>
		
</makefile>


