#!/usr/bin/perl

@format=qw(
autoconf      
borland       
dmars         
dmars_smake   
gnu           
mingw         
msevc4prj     
msvc          
msvc6prj      
msvs2003prj   
msvs2005prj   
msvs2008prj   
symbian       
watcom        
xcode2        
);

open(FILE, "> temp.bkl") or die("open output temp.bkl failure\n");
print FILE  <<EOF
<makefile>
<exe id="hello">
   <sources>\$(fileList('./*.cpp'))</sources>
</exe>
</makefile> 
EOF
;

print "# 生成 temp.bkl , 用下面的 bakefile 命令 再生成makefile \n";
foreach (@format)
{
	print "bakefile -f ".$_." temp.bkl\n";
}

print <<EOF
msdev temp.dsw /make "all"
msdev temp.dsw /make "all"
EOF
;
