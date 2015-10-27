#!/usr/bin/perl
#2011_04_07_18:30:20   星期四   add by greshem
#进入 struct 定义的结构体之后, 在进行下面的判断, 并生成 c++的代码. 第二列就是c++的代码.    
use Data::Dumper;
use strict;
our $cur_struct;
sub print_name($)
{
	my ($line)=@_;
	print "\tcout  << in\.".$line,"<<\"|\";\n";
}

sub print_string_name($)
{
	my ($line)=@_;
	print "\tcout  << "."string(in\.".$line.")<<\"|\";\n";
}
#写正则表达式的时候 把有数组的regex 的 都放到前面去. 
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
#mainloop

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
};
EOF
;
		}
	}
	close(FILE);
}

print_cpp_dump_code();
