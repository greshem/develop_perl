#!/usr/bin/perl

if($0=~/merge_block_line.pl$/)
{
	$file=shift or die("usage: $0 file pattern \n");
	#$pattern=shift or die("usage: $0 file pattern \n");
	# my $invert;

	@blocks=file_contents_to_blocks($file);
	#@ret=grep { /$pattern/} @blocks;
	@ret=@blocks;

	if(scalar(@ret) eq 0)
	{
		print "null block\n";
	}
	else
	{
		for (@ret)
		{
				$_=~s/\n/\t/g;
				print $_."\n";
				#print join("\t", $_);
		}
	}
}
else
{
	warn("I'm module \n");
	print <<EOF
#�� ������Ϣ�л�ȡ ������Ŀ�� ��. 
perl /root/svn_dir/develop_sed_txt_tools/grep_block_section.pl  /tmp/gdb.txt  "File\s+[^\/]"  

perl grep_block_section.pl  diskplat_struct_3   DW_AT_name > diskplat_struct_4
EOF
;

}



#���ļ�ת���ɿ�ṹ,  
sub file_contents_to_blocks($)
{
	(my $file)=@_;
	open(FILE, $file) or die("open  file error $!\n");
	my @blocks;
	my $inBlock=0;
	my $nth=0;
	my $multi_lines;
	foreach (<FILE>)
	{
		#�ǿ���, blocks��ʼ 
		if($_=~/^\S+/ && $inBlock==0)
		{
			$inBlock=1;
			$nth++;
		}

		#����, �ӿ����������	
		if($_=~/^\s+$/ && $inBlock==1)
		{
			$inBlock=0;
			push(@blocks, $multi_lines);
			$multi_lines=undef;
		}

		#�ڿ� blocks section ������. 
		if($inBlock==1)
		{
			#push(@blocks, $_);
			$multi_lines.=$_;
		}
	}

	#�ļ�ֻ��һ������.	
	if($inBlock ==1  && defined($multi_lines))
	{
		push(@blocks, $multi_lines);
		$multi_lines=undef;
	}
	return @blocks;
}
