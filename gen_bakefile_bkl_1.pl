#!/usr/bin/perl
########################################################################
#����ı���ƽ̨ ������Ҫ��, ���ڵĿ���������Ŷ�ò���Ҫ. 
#dmars          dmars_smake   
#borland       
#symbian  watcom    xcode2        
@format=qw(
autoconf      
gnu mingw 
msevc4prj     msvc          msvc6prj      msvs2003prj   msvs2005prj   msvs2008prj   
);


########################################################################
#����Ĭ�ϵ� bakefile ����. 
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
#���� *.bkl ���б�
sub get_bkl_list()
{
	my @file_list;
	@file_list=glob("*.bkl");
	return @file_list;
}


sub dsp_compile()
{
print <<EOF
#msdev ���� ��ʽ����:
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
	#print "# ���� temp.bkl , ������� bakefile ���� ������makefile \n";
	foreach (@format)
	{
		print "bakefile -f ".$_."  $each_bkl \n";
	}
	dsp_compile();

}
