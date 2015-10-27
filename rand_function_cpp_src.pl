#!/usr/bin/perl
#2010_09_19_17:13:37 add by greshem
use Template;
#use "/root/PerlQzjLib/rand_word.pm";
use rand_word;
use Getopt::Std;

#%opt;
#getopt("-m", %opts);
my @all_fun;
########################################################################
if( ! -f "fun.tpl" )
{
	open(TPL, ">fun.tpl");
	print TPL  <<EOF
#include <dirent.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "include.h"
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
########################################################################
#���ɳ����ļ�
foreach (2..20)
{
	gen_c_src_file("file_".$_.".cpp");
}

#�����������ļ�
gen_main(\@all_fun);

########################################################################
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
#include <Baselib.hpp>
#include <gtest/gtest.h>
#include <fstream>
#include <dirent.h>
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
//ͨ��  /root/gen_makefile/rand_function.pl����ĳ������ע��
[% FOREACH number IN  function%] extern int 	fun_[%number%]();
[%END%]

int main()
{
[% FOREACH number IN  function%]
	fun_[%number%]();
[%END%]
	
}

