#!/usr/bin/perl
#********************************************************************************************
# Description - : ���ļ������ȡ ������ hash �ṹ, ����  perl �����ʵ��. 
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
		#print  "\"".$each ."\"=>\"". ${$in}{$each}."\", \n";
		$each2=${$in}{$each};
		print <<EOF
"$each"=>"$each2",
EOF
;
	}
	print ");\n";
}

%a;
#--------------------------------------------------------------------------
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
dump_hash_with_Perl_lang(\%hash);

