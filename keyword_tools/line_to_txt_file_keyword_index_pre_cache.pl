#!/usr/bin/perl

#deal_with_ppc_asm_insn();

#
#deal_with_float_asm_intel();

#deal_with_aix_lvm();
#deal_with_jfs2_function();

 deal_with_arm_asm();


sub deal_with_arm_asm()
{
	my  $file="data/arm.txt";
	open(FILE, $file) or warn("open file error $file, $!\n");

	for(<FILE>)
	{
		chomp;
		my $content=$_;
		my $keyword=awk_1th($content);;
		$filename="arm_".$keyword;
		create_file($filename, $content);	
	}

}



sub deal_with_template()
{
	my  $file="data/float_asm_intel.txt";
	open(FILE, $file) or warn("open file error $file, $!\n");

	for(<FILE>)
	{
		chomp;
		my $content=$_;
		my $keyword=awk_1th($content);;
		$filename="mdf_filename".$keyword;
		create_file($filename, $content);	
	}

}

sub deal_with_jfs2_function()
{
	my  $file="data/jfs2_export_function.txt";
	open(FILE, $file) or warn("open file error $file, $!\n");

	for(<FILE>)
	{
		chomp;
		my $content=$_;
		my $keyword=awk_1th($content);;
		$filename=$keyword;
		create_file($filename, $content);	
	}

}


sub deal_with_aix_lvm()
{
	my  $file="data/liblvm_function_.txt";
	open(FILE, $file) or warn("open file error $file, $!\n");

	for(<FILE>)
	{
		chomp;
		my $content=$_;
		my $keyword=awk_1th($content);;
		#my $filename="aix_lvm_".$keyword;
		my $length=awk_4th($content);
		$length=~s/^0000//g;
		my $filename=$length."_".$keyword;

		create_file($filename, $content);	
	}

}


sub deal_with_float_asm_intel()
{
	my  $file="data/float_asm_intel.txt";
	open(FILE, $file) or warn("open file error $file, $!\n");

	for(<FILE>)
	{
		chomp;
		my $content=$_;
		my $keyword=awk_1th($content);;

		#my $filename= delete_char_($_);
		#my $filename= delete_char_simple($_);
		#$filename=hook_filename_tnsoft($filename);
		#$filename=hook_filename_random_packet($filename);
		#$content=hook_content_random_packet($content, $keyword);

		if($keyword=~/^F/)
		{
			$filename="intel_asm_浮点_".$keyword."_指令";
			print $filename."\n";
			
			create_file($filename, $content);	
		}
	}
}


sub get_now()
{
	use POSIX 'strftime';
	$cur_time=POSIX::strftime('%Y-%m-%d-%H:%M:%S_%A',localtime(time()));
	print "nowTime -> ", $cur_time,"\n";
	return $cur_time;
}


#my $file=shift or die("Usage: $0 input_file \n");
#my $file="data\\cpuflag_关键字_文档_intel_汇编_.txt";
#my $file="data/ms_all_vul.txt";
#my $file="data/ms_all_vul_english.txt";
#my $file=shift or die("Usage: $0 input_file \n");

sub deal_with_ppc_asm_insn()
{
	my  $file="data/ppc_asm_insn.txt";
	open(FILE, $file) or warn("open file error $file, $!\n");

	for(<FILE>)
	{
		chomp;
		my $content=$_;
		my $keyword=awk_1th($content);;
		#my $filename= delete_char_($_);
		#my $filename= delete_char_simple($_);
		#$filename=hook_filename_tnsoft($filename);
		#$filename=hook_filename_random_packet($filename);
		#$content=hook_content_random_packet($content, $keyword);

		$filename="ibm_aix_ppc_asm_".$keyword."_指令";
		print $filename."\n";
		
		create_file($filename, $content);	
	}
}
sub awk_1th($)
{
	(my $input)=@_;
	my @array=split(/\s+/, $input);
	return $array[0];
}
sub awk_3th($)
{
	(my $input)=@_;
	my @array=split(/\s+/, $input);
	return $array[2];
}
sub awk_4th($)
{
	(my $input)=@_;
	my @array=split(/\s+/, $input);
	return $array[3];
}


sub create_file($)
{
	(my $filename, my $content)=@_;
	mkdir("output/");
	open(FILE, ">output/$filename.txt") or warn("open $filename error \n");
	my $cur_time=get_now();
	print FILE "#$cur_time add by gresheme \n";
	#print FILE $filename."\n";
	#my $refer=reference_by();
	print FILE  $content;
	close(FILE);
}

sub reference_by()
{
	my $str=<<EOF
#进一步参看   /root/develop_perl/english_symbols_chars_sed_replace.pl 
EOF
;
}


sub delete_char_simple($)
{
	(my $each)=@_;
	$tofile=$each;
	#$tofile=~s/ /_/g;
	$tofile=~s/\|/_/g;
	$tofile=~s/\//_/g;
	$tofile=~s/\(/_/g;
	$tofile=~s/\)/_/g;
	$tofile=~s/"/_/g;
	$tofile=~s/\'/_/g;
	$tofile=~s/^_//g;
	$tofile=~s/<//g;
	$tofile=~s/>//g;
	$tofile=~s/\n//g;
	$tofile=~s/\r//g;
	return $tofile;
}

#处理 tnsoft.com.cn 函数,  
#yhli_李银虎.txt 最后 输出 是这样的文件. 
sub hook_filename_tnsoft($)
{
	(my $each)=@_;
	$ret_str=$each;
	#$ret_str=~s/\@tnsoft\.com\.cn//;
	(my $chinese, my $pingying)=($each=~/(\S+)\s+(\S+)@.*/);

	$ret_str=$pingying."_".$chinese;	
	return $ret_str;

}

sub hook_filename_random_packet($)
{
	(my $each)=@_;
	$ret_str=$each."_随机_包_网络_生成";
	return $ret_str;
}

sub hook_content_random_packet($$)
{
	(my $each, my $keyword )=@_;
	$ret_str=$each."随机 网络包 ,  来自 wireshark 的 randpkt \n";
	$ret_str.="命令行: randpkt  $keyword \n";
	$ret_str.="#生成  500 个包的  $keyword pcap 文件\n";
	$ret_str.=" randpkt -b 500 -t dns rand_$keyword.pcap \n";

	return $ret_str;
}

#==========================================================================
# /bin/delete_space_for_bash.pl
# 有一个简单的方式 验证下面的函数 是不是 对 ascii 所有的字符都覆盖掉了, 
# 	man ascii  然后copy 一段,  所有的ascii 的文本块 好用下面的函数 然后看输出函数, 有没有特殊字符. 

sub delete_char_($)
{
	(my $each)=@_;
	$tofile=$each;
	$tofile=~s/\s/_/g;
	$tofile=~s/\(/_/g;
	$tofile=~s/\)/_/g;
	$tofile=~s/\&/_/g;
	$tofile=~s/\'/_/g;
	$tofile=~s/？/__/g;
	$tofile=~s/，/__/g;
	$tofile=~s/�/__/g;
	$tofile=~s/=/_/g;
	$tofile=~s/\+/_/g;
	$tofile=~s/\:/_/g;
	$tofile=~s/\*/_/g;

	$tofile=~s/\?/_/g;
	$tofile=~s/\,/_/g;
	$tofile=~s/-/_/g;
	$tofile=~s/\{/_/g;
	$tofile=~s/\}/_/g;
	$tofile=~s/\;/_/g;
	$tofile=~s/\//_/g;
	$tofile=~s/\|/_/g;
	$tofile=~s/\\/_/g;
	$tofile=~s/\./_/g;
	$tofile=~s/\"/_/g;
	$tofile=~s/\@/_/g;
	$tofile=~s/\'/_/g;
	$tofile=~s/ /_/g;
	$tofile=~s/\t/_/g;
	$tofile=~s/\#/_/g;
	$tofile=~s/\`/_/g;
	$tofile=~s/\$/_/g;
	$tofile=~s/\%/_/g;
	$tofile=~s/\^/_/g;
	
	#print "#".$each, "---  ", $tofile,"\n";
	return $tofile;
}
