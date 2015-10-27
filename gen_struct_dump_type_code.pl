#!/usr/bin/perl
#********************************************************************************************
# Description -  ͷ�ļ���struct �������Ķ���ķ�ʽ 
# 					typedef struct _one_struct{
#					...
#					...
#					...
# 					} one_struct 
# 					ע�� _ ������. 
#					Ҳע�� { } ��ŵ�λ��, ���粻���� ����Ĵ�ŵķ�ʽ �����Ĵ������ִ���. 
# Author -      qianzhongjie@gmail.com
# Date -        2011_04_08_17:28:41
# *******************************************************************************************
#���� struct ����Ľṹ��֮��, �ڽ���������ж�, ������ c++�Ĵ���. �ڶ��о���c++�Ĵ���.    
use Data::Dumper;
use strict;
our $cur_struct;
#����һ���int long a , ֱ�� cout<<a  �Ϳ���ʵ�ִ�ӡ. 
sub print_name($)
{
	my ($line)=@_;
	print "\tcout  << \"$line=\" << in\.".$line,"<<\"|\";\n";
}

#�������� char bbbb[450] �����Ķ��� , Ҫ��ӡ�Ļ� �� cout<<string(bbbb) �Ϳ��Դ�ӡ����, ���溬�ж����ƾ���������. 
sub print_string_name($)
{
	my ($line)=@_;
	print "\tcout  << \"$line=\" << string(in\.".$line.")<<\"|\";\n";
}

#д������ʽ��ʱ�� ���������regex �� ���ŵ�ǰ��ȥ. 
# ���µı��ʽ�ٽ���ע��, ���� netware_emulator  ��Ŀ�㹻��.
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

#���� %hash_reg ��pattern�� Ȼ����ö�Ӧ�ĺ��� 
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
	print ERROR  $line,"����ת����  cpp code \n";
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
#���뺬���� struct ����� ͷ�ļ��Ϳ�����. 
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
		#�ṹ�忪ʼ.
		if($_=~/.*typedef\s+struct\s+_(\S+)\s*{/)
		{
			$cur_struct=$1;
			print <<EOF
template<> void dump_type($cur_struct  &in)
{
EOF
;
		}
		#�ṹ���ڲ�.
		change_to_cpp_code($_);

		#�ṹ�����.
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


