#!/usr/bin/perl 
use strict;
use warnings;


print %ENV;
print $ENV{"LANG"};

#==========================================================================
#其他的变量通过  perl -d  
#				use a;
#			进入调试模式之后 可 $ tab tab   补全, 可以把全局变量都打印出来.
