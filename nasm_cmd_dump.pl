#!/usr/bin/perl
#2011_03_18_13:53:06   星期五   add by greshem

@all_file= glob("*.asm");
push(@all_file, glob("*.s"));
for (@all_file)
{
	($name)=($_=~/(.*)(.asm|.s)/);
	#if(!defined($name))
	#{
	#}
	print "nasm -o $name.o -f elf32 $_\n";
	print "nasm  -o $name.o -f elf64 $_\n"; 
	print "#nasm -hf 更多的文件格式\n";
	print "as -o $name.o $_\n";
	print "as -gstabs -o $name.o $_\n";
	#-gstabs
}
