#!/usr/bin/perl 

our $g_project_name = shift or die("Usage: $0 Please input ProjectName");
mkdir(".//$g_project_name");
create_dllmain_file($g_project_name);
create_export_head_file($g_project_name);
create_export_sourct_file($g_project_name);
create_export_def_file($g_project_name);
create_dll_project_bkl($g_project_name);

sub create_dll_project_bkl($)
{
	my ($project_name) = @_;
	open(FILE, "> .//$project_name//build.bkl") or die("create file error\n");
	print FILE <<EOF
<?xml version="1.0" ?>
	<!-- \$Id: bakefile_quickstart.txt,v 1.5 2006/02/11 18:41:11 KO Exp \$ -->
	<makefile>
			<dll id="$project_name">
				<cxxflags>/Od</cxxflags>
				<cxxflags>/D_DEBUG</cxxflags>
				<cxxflags>/D_LIB</cxxflags>
				<cxxflags>/D_MBCS</cxxflags>
				<cxxflags>/D_EXPORTINGS</cxxflags>
				<cxxflags>/Gm</cxxflags>
				<cxxflags>/RTC1</cxxflags>			
				<cxxflags>/W3</cxxflags>
				<cxxflags>/TP</cxxflags>
				<cxxflags>/ZI</cxxflags>
				<cxxflags>/MTd</cxxflags>
				<ldflags>/DEF:"dll_export_def.def"</ldflags>
				<ldflags>/NOLOGO</ldflags>
				<sources>\$(fileList('*.cpp'))</sources>
			</dll>
			
	</makefile>
EOF
;
	close(FILE);
}


sub create_dllmain_file($)
{
	my ($project_name) = @_;
	open(FILE, "> .//$project_name//$project_name.cpp") or die("create file error\n");
	print FILE <<EOF
#include <windows.h>
#include <iostream>
using namespace std;
BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
					 )
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH:
	{
		cout<<"DLL_PROCESS_ATTAC load success"<<endl;
		break;
	}
	case DLL_PROCESS_DETACH:
	{
		cout<<"DLL_PROCESS_DETACH unload success"<<endl;
		break;
	}
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
		break;
	}
	return TRUE;
}

EOF
;
	close(FILE);
}

sub create_export_head_file($)
{
	my ($project_name) = @_;
	open(FILE, "> .//$project_name//exportfun.h") or die("create file error\n");
	print FILE <<EOF
#pragma once


#define _EXPORTING

#ifdef _EXPORTING
  #define UTLITI_DECLSPEC __declspec(dllexport)
#else
  #define UTLITI_DECLSPEC __declspec(dllimport)
#endif

extern  "C" UTLITI_DECLSPEC void h_export_cdecl_fun();
extern  "C" UTLITI_DECLSPEC void _stdcall h_export_stdcall_fun();

UTLITI_DECLSPEC void def_export_cdecl_fun();
UTLITI_DECLSPEC void _stdcall def_export_stdcall_fun();
UTLITI_DECLSPEC void def_export_fun_by_num();

EOF
;
	close(FILE);
}

sub create_export_sourct_file($)
{
	my ($project_name) = @_;
	open(FILE, "> .//$project_name//exportfun.cpp") or die("create file error\n");
	print FILE <<EOF
#include "exportfun.h"
#include <iostream>
using namespace std;


void h_export_cdecl_fun()
{
}
void _stdcall h_export_stdcall_fun()
{
}

void def_export_cdecl_fun()
{
}
void _stdcall def_export_stdcall_fun()
{
}
void def_export_fun_by_num()
{
}

EOF
;
	close(FILE);
}

sub create_export_def_file($)
{
	my ($project_name) = @_;
	open(FILE, "> .//$project_name//dll_export_def.def") or die("create file error\n");
	print FILE <<EOF
LIBRARY	"$project_name"

EXPORTS
	 def_export_cdecl_fun=def_export_cdecl_fun \@1
	 def_export_stdcall_fun=def_export_stdcall_fun \@2
     def_export_fun_by_num=def_export_fun_by_num \@3 NONAME
EOF
;
	close(FILE);
}
