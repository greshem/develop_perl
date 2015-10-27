#!/usr/bin/perl
#********************************************************************************************
# Description -  头文件的struct 是这样的定义的方式 
# 					typedef struct _one_struct{
#					...
#					...
#					...
# 					} one_struct 
# 					注意 _ 的区别. 
#					也注意 { } 存放的位置, 假如不按照 上面的存放的方式 产生的代码会出现错误. 
# Author -      qianzhongjie@gmail.com
# Date -        2011_04_08_17:28:41
# *******************************************************************************************
#进入 struct 定义的结构体之后, 在进行下面的判断, 并生成 c++的代码. 第二列就是c++的代码.    
use Data::Dumper;
use strict;
our $cur_struct;
#对于一般的int long a , 直接 cout<<a  就可以实现打印. 
sub print_name($)
{
	my ($line)=@_;
	print "\tcout  << \"$line=\" << in\.".$line,"<<\"|\";\n";
}

#用来处理 char bbbb[450] 这样的定义 , 要打印的话 用 cout<<string(bbbb) 就可以打印出来, 里面含有二进制就是软码了. 
sub print_string_name($)
{
	my ($line)=@_;
	print "\tcout  << \"$line=\" << string(in\.".$line.")<<\"|\";\n";
}

#写正则表达式的时候 把有数组的regex 的 都放到前面去. 
# 有新的表达式再进行注册, 对于 netware_emulator  项目足够了.
our %hash_reg=(
'unsigned\s+char\s+(\S+)[\d+]\s*;'=> 		\&print_name,
'char\s+(\S+)\[\d+\]\s*;'=> 		\&print_string_name,
'char\s+(\S+)\s*;'=> 		\&print_name,
'int\s+(\S+)\s*;'=> 		\&print_name,
'short\s+(\S+)\s*;'=> 		\&print_name,
'unsinged\s+int\s+(\S+)\s*;'=> 		\&print_name,
'unsinged\s+short\s+(\S+)\s*;'=> 		\&print_name,
);


#$Data::Dumper::Purity = 1; 
#$Data::Dumper::Deepcopy = 1;   
#print Dumper(%hash_reg);

#根据 %hash_reg 的pattern项 然后调用对应的函数 
sub change_to_cpp_code($)
{
	(my $line)=@_;
	#print $_;
	for my  $pattern (keys(%hash_reg))
	{
		if($line=~/$pattern/)
		{
			#print "OK\n";
			#print $pattern."\n";;
			my $name=$1;
			$hash_reg{$pattern}->($name);;
			return ;
		}
	}
	print ERROR  $line,"不能转换成  cpp code \n";
}

########################################################################
#change_to_cpp_code("    char  test[40] ;");
#change_to_cpp_code("char  test[40] ;");
#change_to_cpp_code("char  test ;");
#my $file = shift or die("Usage: $0 file.h\n");
sub print_header()
{
	print <<EOF
#include "protocol.h"
template <class T>void  dump_type( T &in)
{
} 

template<> void dump_type(int &in)
{
	cout<<"int "<<in<<endl;
}
EOF
;
}

sub print_cpp_dump_code()
{
	print_header();
	print_cpp_dump_code_one_file("struct_declaration.h");
	print_cpp_dump_code_one_file("client_request_options_tags.hpp");
	print_cpp_dump_code_one_file("srv_response_tags.h");

}

#==========================================================================
#传入含所有 struct 定义的 头文件就可以了. 
sub print_cpp_dump_code_one_file($)
{
	
	(my $file)=@_;
	#my $file="struct_declaration.h";
	#our $cur_struct;
	open(FILE, $file) or die("Open file error, $!\n");
	for(<FILE>)
	{
		chomp($_);
		if($_=~/^\/\//) {next;}
		if($_=~/^\*/){next;}
		#结构体开始.
		if($_=~/.*typedef\s+struct\s+_(\S+)\s*{/)
		{
			$cur_struct=$1;
			print <<EOF
template<> void dump_type($cur_struct  &in)
{
EOF
;
		}
		#结构体内部.
		change_to_cpp_code($_);

		#结构体结束.
		if($_=~/.*}.*$cur_struct.*/)
		{
		print <<EOF
	cout<<endl;
};
EOF
;
		}
	}
	close(FILE);
}

########################################################################
#mainloop
#print_cpp_dump_code();
	print_header();
	my $file=shift or die("Usage: $0 input.h\n");
	print_cpp_dump_code_one_file($file);


