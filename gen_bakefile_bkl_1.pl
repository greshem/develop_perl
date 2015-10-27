#!/usr/bin/perl
########################################################################
#下面的编译平台 都不需要了, 现在的开发过程中哦该不需要. 
#dmars          dmars_smake   
#borland       
#symbian  watcom    xcode2        
@format=qw(
autoconf      
gnu mingw 
msevc4prj     msvc          msvc6prj      msvs2003prj   msvs2005prj   msvs2008prj   
);


########################################################################
#生成默认的 bakefile 例子. 
sub gen_demo_bakefile()
{
	open(FILE, "> temp.bkl") or die("open output temp.bkl failure\n");
	print FILE  <<EOF
<makefile>
<exe id="hello">
	<sources>\$(fileList('./*.cpp'))</sources>
</exe>
</makefile> 
EOF
;
	close(FILE);
}

########################################################################
#返回 *.bkl 的列表
sub get_bkl_list()
{
	my @file_list;
	@file_list=glob("*.bkl");
	return @file_list;
}


sub dsp_compile()
{
print <<EOF
#msdev 编译 方式如下:
msdev temp.dsw /make "all"
msdev temp.dsw /make "all"
EOF
;
}

########################################################################
#mainloop
@bkl_lists= get_bkl_list();
if(scalar(@bkl_lists)==0)
{
	gen_demo_bakefile();
}

for $each_bkl ( get_bkl_list())
{
	print $each_bkl."\n";
	#print "# 生成 temp.bkl , 用下面的 bakefile 命令 再生成makefile \n";
	foreach (@format)
	{
		print "bakefile -f ".$_."  $each_bkl \n";
	}
	dsp_compile();

}
