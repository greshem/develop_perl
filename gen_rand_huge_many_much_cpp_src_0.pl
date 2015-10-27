#!/usr/bin/perl

#2011_02_20_05:17:58 add by greshem 修改成 MSVC 也可以编译的 去掉头文件等等. 
use Template;
#use "/root/PerlQzjLib/rand_word.pm";
use rand_word;
my @all_fun;
if( ! -f "fun.tpl" )
{
	open(TPL, ">fun.tpl");
	print TPL  <<EOF
//#include <dirent.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
//#include "include.h"
[% FOREACH number IN  function%]
extern int fun_[%number %]()
{
	printf("%s", "test string [%number %]\\n");
	return 1;
}	
[%END%]
EOF
;
}
foreach (2..20)
{
	gen_c_src_file("file_".$_.".cpp");
}

gen_main(\@all_fun);
print "#你现在可以用 /bin/gen_makefile_from_file_latest.pl 生成 makefile \n";
print "/bin/gen_makefile_from_file_latest.pl *.cpp \n";
print "# 或者用 /bin/gen_bakefile_bkl.pl  生成tmp.bkl 运行bakefile 再生成 makefile \n";
print  "/bin/gen_bakefile_bkl.pl \n";
#gen_c_src_file("bb.cpp");
#gen_c_src_file("cc.cpp");
sub gen_main($)
{
	(my $all_fun)=@_;

	my $var =
	{
	function=>$all_fun,
	};

	my $config=undef;
	my $template=Template->new();

	$template->process(\*DATA, $var, "main.cpp" ) || die $template->error();
}
sub gen_c_src_file( $)
{
	(my $filename)=@_;
	@func=qw();
	@func= rand_word_array(10);
	push(@all_fun, @func);
	print @all_fun."\n";
	#print @func."\n";;

	my $var =
	{
	filename=>$filename,
	function=>\@func,
	};

	my $config=undef;
	my $template=Template->new();

	$template->process("fun.tpl", $var, $filename ) || die $template->error();
}

__DATA__
//########################################################################
//#include <QzjUnit.hpp>
//#include <MLmyUnit.hpp>
//#include <Baselib.hpp>
//#include <gtest/gtest.h>
//#include <dirent.h>
#include <fstream>
#include <string> 
#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <map>
#include <iostream> 
#include <algorithm>
#include <vector> 
#include <iterator>  
[% FOREACH number IN  function%]extern int 	fun_[%number%]();
[%END%]

int main()
{
[% FOREACH number IN  function%]
	fun_[%number%]();
[%END%]
	
}

