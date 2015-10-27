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

push(@b, "#1");
push(@b, "#2");
push(@b, "#3");
push(@b, "#4");

push(@format, "bbbbbbbbbbbb");
push(@format, "bbbbbbbbbbbb");
push(@format, @b);
foreach (@format)
{
	print $_,"\n";
}
