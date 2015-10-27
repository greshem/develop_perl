#!/usr/bin/perl
#********************************************************************************************
# Description - : ���ļ������ȡ ������ hash �ṹ, ����  perl �����ʵ��. ���������ĳ���  
# Author -      qianzhongjie@gmail.com
# Date -        2011_03_11_18:25:45
# *******************************************************************************************
#2011_03_11_12:27:55   ������   add by greshem

#--------------------------------------------------------------------------
sub dump_hash_with_Perl_lang($)
{

	($in)=@_;
	print "%out=(\n";
	for $each  (keys(%{$in}))
	{
		$each2=${$in}{$each};
		print <<EOF
"$each"=>"$each2",
EOF
;
	}
	print ");\n";
}

#--------------------------------------------------------------------------
sub dump_hash_with_php_lang($)
{
	($in)=@_;
	print "<?php \n";
	print "\$out=array ( \n";
	for $each  (keys(%{$in}))
	{
		#print  "\"".$each ."\"=>\"". ${$in}{$each}."\", \n";
		$each2=${$in}{$each};
		print <<EOF
"$each"=>"$each2",
EOF
;
	}
	print ");\n";
	print "print_r(\$out)\n";
	print "?>\n";

}
#--------------------------------------------------------------------------
sub dump_hash_with_cpp_stl($)
{
	($in)=@_;
	print <<EOF
#include<map>
#include<iostream>
#include <stdio.h>
using namespace std;
typedef map<string, string > M_TYPE;
typedef M_TYPE::iterator M_IT;
typedef M_TYPE::const_iterator M_CIT;

int main()
{
	M_TYPE my_map;
EOF
;	

	#���ݲ��벿�� my_map.insert(make_pair(foo1, foo2));
	for $each  (keys(%{$in}))
	{
		$each2=${$in}{$each};
		print <<EOF
my_map.insert(make_pair("$each", "$each2"));
EOF
;
	}

print <<EOF
}
EOF
;

}
#--------------------------------------------------------------------------
sub dump_hash_with_python($)
{
	($in)=@_;
	print "out={\n";
	for $each  (keys(%{$in}))
	{
		$each2=${$in}{$each};
		print <<EOF
"$each":"$each2",
EOF
;
	}
	print "};\n";

}
########################################################################
#%a;
#***************************************************************************
# Description:   �� һ�е� ��һ��������Ϊ  key �������� value 
# @param 	
# @return 	
#***************************************************************************/
sub hashFromFile($)
{
	($file)=@_;
	%tmp;
	$i=1;
	open(FILE, $file) or die("open file error\n");
	foreach(<FILE>)
	{
		if(/(\S+)\s+(.*)/)
		{
			$tmp{$1}=$2;
		}
	}
	return %tmp;
}
########################################################################
$file=shift or die("Usage: $0 file\n");
%hash=hashFromFile($file);
#dump_hash_with_Perl_lang(\%hash);
dump_hash_with_php_lang(\%hash);
#dump_hash_with_cpp_stl(\%hash);
#dump_hash_with_python(\%hash);

