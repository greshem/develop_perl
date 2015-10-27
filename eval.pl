#!/usr/bin/perl
#2011_03_15_13:01:33   星期二   add by greshem
#pkgconfig_makefile/pkgcfg_pc_2_perl_eval.pl 项目下. 
#eval ('print \"linux\n;\"');
eval ("1+1");
die $@ if $@;
#
#还有 用来检测 程序是否错误， eval 之后 的一个 PERL 的符号 变量 guess_os 的 程序. 

#_root__2010_03_12/jiulala/ 也用到了eval, 把java 里面的语法转换成了perl 的语法了.  

#eval();# 用来做错误检查, 看看有没有必要的包.  

    eval {
        require 'Number::Format.pm';
    $mask= new Number::Format (  THOUSANDS_SEP=>' ', DECIMAL_POINT=>'.');
    };

die $@ if $@;
#这样就检测出没有必要的包了. 

########################################################################
#webmin 也用这样的方式 检测有没有对应的包的. 

# 来自于 N:\xfile\stockmonkey-2.9013,   msft_6-17-8.txt , 的使用 用了do 的方式 而不是 eval 有区别吗。  
#

#2011_03_17_21:55:18   星期四   add by greshem
do 'stat.pl'
#等同于 
eval `cat stat.pl`;
