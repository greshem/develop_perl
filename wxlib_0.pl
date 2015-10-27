#!/usr/bin/perl
#2011_02_11_17:27:09 add by greshem
# 获取wxwidgets 的所有的库. 


@file=glob("/usr/lib/libwx*");
for $each  (@file)
{
	(-f $each) && 	print $each."\t";
}


print "\n ########################################################################\n";
print "wx-config --libs \n";
print "########################################################################\n";

print "wxwidgets 的flags 需要注意 \n";
for (<DATA>)
{
	print $_;
}
__DATA__
#比如我的build.cfg内容：
WXVER_MAJOR=2 
WXVER_MINOR=8 
WXVER_RELEASE=10 
BUILD=release 
MONOLITHIC=1 
SHARED=1 
UNICODE=1
WXUNIV=0 
CFG= 
VENDOR=custom 
OFFICIAL_BUILD=1 
DEBUG_FLAG=default 
DEBUG_INFO=default 
RUNTIME_LIBS=static 
MSLU=0 
USE_EXCEPTIONS=1 
USE_THREADS=1 
USE_GUI=1 
USE_HTML=1 
USE_MEDIA=1 
USE_ODBC=0 
USE_OPENGL=0 
USE_QA=0 
USE_GDIPLUS=0 
COMPILER=gcc 
CC=gcc 
CXX=g++ 
CFLAGS= 
CPPFLAGS= 
CXXFLAGS= 
LDFLAGS=-s  
