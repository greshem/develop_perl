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
#从 调试信息中获取 本地项目的 块. 
perl /root/svn_dir/develop_sed_txt_tools/grep_block_section.pl  /tmp/gdb.txt  "File\s+[^\/]"  

perl grep_block_section.pl  diskplat_struct_3   DW_AT_name > diskplat_struct_4
EOF
;

}



#把文件转换成块结构,  
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
		#非空行, blocks开始 
		if($_=~/^\S+/ && $inBlock==0)
		{
			$inBlock=1;
			$nth++;
		}

		#空行, 从块里面出来了	
		if($_=~/^\s+$/ && $inBlock==1)
		{
			$inBlock=0;
			push(@blocks, $multi_lines);
			$multi_lines=undef;
		}

		#在块 blocks section 里面了. 
		if($inBlock==1)
		{
			#push(@blocks, $_);
			$multi_lines.=$_;
		}
	}

	#文件只有一块的情况.	
	if($inBlock ==1  && defined($multi_lines))
	{
		push(@blocks, $multi_lines);
		$multi_lines=undef;
	}
	return @blocks;
}
