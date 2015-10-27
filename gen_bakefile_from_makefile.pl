#!/usr/bin/perl
#2011_07_13_10:25:26   星期三   add by greshem
#这里处理的makefile 是通过个人的 /bin/gen_makefile_from_file_latest.pl 来生成的makefile 
#
open(FILE, "Makefile") or die("open File error $!\n");

our $in_EXEC=undef;
our @EXEC;
our $in_MAIN_OBJS=undef;;
our @MAIN_OBJS;
our $in_NOMAIN_OBJS=undef;;
our @NOMAIN_OBJS;

for(<FILE>)
{
	if($_=~/^EXEC/	)
	{
		$in_EXEC=1;
	}
	elsif ($_=~/^MAIN_OBJS/)
	{
		$in_EXEC=undef;
		$in_MAIN_OBJS=1;
	}
	elsif($_=~/^NOMAIN_OBJS/)
	{
		$in_MAIN_OBJS=undef;
		$in_NOMAIN_OBJS=1;
	}
	elsif( $_=~/^CFLAGS/)
	{
		$in_NOMAIN_OBJS=undef;
	}


	chomp;
	$_=~s/\\$//;   #makefile 的最后的连接符删除掉.
	$_=~s/^\s+//g; #最前面的空格删除掉.
	$_=~s/\s+$//g; #最后面的空格删除掉.
	if( defined($in_EXEC))
	{
		my @array=split(/\s+/, $_ );
		my @all_defined=grep{$_;} @array;
		@all_defined=grep {!/^EXEC/} @all_defined;
		push(@EXEC, @all_defined);
	}
	if( defined($in_MAIN_OBJS))
	{
		my @array=split(/\s+/, $_ );
		my @all_defined=grep{$_;} @array;
		@all_defined=grep {!/^MAIN_OBJS/} @all_defined;
		push(@MAIN_OBJS, @all_defined);
	}
	if(defined($in_NOMAIN_OBJS))
	{
		my @array=split(/\s+/, $_ );
		my @all_defined=grep{$_;} @array;
		@all_defined=grep {!/^NOMAIN_OBJS/} @all_defined;
		push(@NOMAIN_OBJS, @all_defined);
	}
}


#从objects数组获取对应的cpp 文件. 
sub get_cpp_from_objs($)
{
	(my $obj)=@_;
	my @cpp_files;
	for(@{$obj})
	{
		my $tmp=$_;
		$tmp=~s/\.o$/\.cpp/;
		if( -f $tmp)
		{
			push(@cpp_files, $tmp);
			next;
		}	
		$tmp=~s/\.o$/\.c/;
		if( -f $tmp)
		{
			push(@cpp_files, $tmp);
			next;
		}	
	}
	return @cpp_files;
}
sub get_one_cpp_from_one_objs($)
{
	(my $filename)=@_;
}

########################################################################
#生成bakefile 的 sources 的标签.
sub gen_bkl_srouces_tags($)
{
	(my $nomain_cpp)=@_;
	my  $ret_str;
	if(ref($nomain_cpp)=~/ARRAY/)
	{
		for(@{$nomain_cpp})
		{
			$ret_str.="<sources>\$(fileList('$_'))</sources>\n";
			#print $ret_str;
		}
		return $ret_str;
	}

	$ret_str="<sources>\$(fileList('$nomain_cpp'))</sources>\n";
	return $ret_str;
}

sub gen_bkl_ext_tag($$)
{
	(my $cpp_file, $nomain_file)=@_;
	
	@files=@{$nomain_file};
	$id=$cpp_file;
	$id=~s/.cpp$//g;
	$id=~s/.c$//g;
	$id=~s/^\.\///g;
	$sources_tag=gen_bkl_srouces_tags(\@files);	
	$sources_tag.=gen_bkl_srouces_tags($cpp_file);


	print <<EOF
        <exe id="$id">
            <app-type>console</app-type>
			<cxxflags>/D_DEBUG</cxxflags>
			<cxxflags>/DWINDOWSCODE</cxxflags>
			<cxxflags>/MTd</cxxflags>
			<ldflags>/NODEFAULTLIB:libcmt.lib</ldflags>
			<include>D:\\usr\\include</include>
			<!--<threading>multi</threading>-->
			<lib-path>D:\\usr\\lib</lib-path>
			<sys-lib>kernel32</sys-lib>
            <sys-lib>user32</sys-lib>
			<sys-lib>gdi32</sys-lib>
			<sys-lib>winspool</sys-lib>
			<sys-lib>comdlg32</sys-lib>
			<sys-lib>advapi32</sys-lib>
			<sys-lib>shell32</sys-lib>
			<sys-lib>ole32</sys-lib>
			<sys-lib>oleaut32</sys-lib>
			<sys-lib>uuid</sys-lib>
			<sys-lib>odbccp32</sys-lib>
			<sys-lib>ws2_32</sys-lib>
			<sys-lib>gtest</sys-lib>
			$sources_tag	
        </exe>

EOF
;
}

sub gen_bkl_makefile_tag_start()
{
	print <<EOF
<?xml version="1.0" ?>
<!-- \$Id: bakefile_quickstart.txt,v 1.5 2006/02/11 18:41:11 KO Exp \$ -->

<makefile>

EOF
;
}
sub gen_bkl_makefile_tag_end()
{
	print <<EOF
</makefile>
EOF
;
}

########################################################################
#mainloop
#print join("\n", @EXEC);
#print join("\n", @MAIN_OBJS);
#print join("\n", @NOMAIN_OBJS);


#print join("\n", get_cpp_from_objs(\@NOMAIN_OBJS));
#print join("\n", get_cpp_from_objs(\@MAIN_OBJS));



gen_bkl_makefile_tag_start();

@nomain_cpp=get_cpp_from_objs(\@NOMAIN_OBJS);
#gen_bkl_ext_tag("aaaa", \@nomain_cpp);

for(get_cpp_from_objs(\@MAIN_OBJS))
{
	gen_bkl_ext_tag($_ , \@nomain_cpp)
}

gen_bkl_makefile_tag_end();

