#!/usr/bin/perl 
#invert-match 

########################################################################
#gdb 提取 所有的 变量,  获取他们的sizeof 
#处理gdb 
#	info variables, 提取输出,  

#注意     "File\s+[^\/]" 东西 都是   系统方面的东西 , 这里我们只关注
#		我们的项目 diskplat/ 
#		File /usr/include/wx-2.8/wx/colour.h:
#		File diskplat/AutoSelectNetCardMan.cpp:

#regex  -v  

#==========================================================================
#<html>  提取  tag  [^<]\*  
#

#==========================================================================
#urlview_regex_match.pl 也用到了  
