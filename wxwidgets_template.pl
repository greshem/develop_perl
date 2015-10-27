#!/usr/bin/perl
#20100601, 添加lmy库的支持。 
use POSIX qw(strftime);
$file=$ARGV[0] or die("$0 filename \n");
if($file!~/cpp$/)
{
	$file.=".cpp";
}

$name=$file;
$name=~s/\.cpp//g;

if( ! -f  "/tmp/wxwidgets_all_class")
{
	warn("/tmp/wxwidgets_all_class 不存在 需要重新生成一下 \n");
	die(" 用这样的方式: bash /root/wxWidget_demo_unittest/get_wxwidgets_all_class.sh ");
}

#成员函数的声明. 
$help_str=`grep $name\:\: /tmp/wxwidgets_all_class`;
$help_str=~s/\n/\n\/\//g;
#print  $help_str;
# sub get_help_str($)
# {
# 	(my $name)=@_;
# 	open(FILE, " grep $name:: /tmp/wxwidgets_all_function_and_class |");
# 
# $help_str=
# print  $help_str;
# }

$time=strftime("%Y_%m_%d", localtime(time()));
print $time;
open(FILE,">".$file) or die("open file error $!\n");
while(<DATA>)
{
	if(/__TEMPLATE__/)
	{
			$_=~s/__TEMPLATE__/$name/g;
			print FILE $_;
	}
	elsif(/__CONSTRUCTOR__/)
	{
			
		#没有成员函数的声明, 输入的主题不是 wxwidgets 支持的类.
		#默认的构造函数的类 变成是 wxString 
		if(length($help_str) >  20)
		{
			$_=~s/__CONSTRUCTOR__/$name/g;
			print FILE $_;
		}
		else
		{
			
			$_=~s/__CONSTRUCTOR__/wxString/g;
			print FILE $_;
		}


	}
	elsif(/__TIME__/)
	{
		$_=~s/__TIME__/$time/g;
		print FILE $_;
	}
	elsif(/__MEMBER_FUNCION_HELPER__/)
	{
	
		$_=~s/__MEMBER_FUNCION_HELPER__/$help_str/g;
		print FILE $_;
	}
	
	else
	{
		print FILE $_;
	}
}
close(FILE);

#system("/bin/gen_makefile_from_file_latest.pl $file");
print ("\n/bin/gen_makefile_from_file_latest.pl $file\n");
system ("/bin/gen_makefile_from_file_latest.pl $file ");
__DATA__
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include <string> 
#include <dirent.h>
#include <fstream>
#include <iterator>  
#include <vector> 
#include <algorithm>
#include <iostream> 
#include <map>
//#include <gtest/gtest.h>
//__TIME__ by greshem. 

#include <wx/wx.h>
#include <wx/thread.h>
#include <wx/confbase.h>
#include <wx/encconv.h>
#include <wx/datetime.h>
//__MEMBER_FUNCION_HELPER__

using namespace std;
int main(int argc, char *argv[])
{
	if(argc != 2)
    {
        printf("Usage: %s file_list \n", argv[0]);
        //exit(-1);
    }
    //printf("%s\n", "__TEMPLATE__");
	wxString wxLogo(_T("__TEMPLATE__"));
	
	//wxDateTime  tm(time(NULL));
	__CONSTRUCTOR__  a;
	//tm.Formatdate();
	string str(wxLogo.mb_str());
	cout<<str.c_str()<<endl;
	return 0;
}
