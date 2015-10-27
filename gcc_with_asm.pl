#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
/bin/gen_makefile_from_file_latest.pl 
# delete -g 
make

#gcc  -Wall  -c -o b.o -Wno-write-strings  b.c
#gcc  -Wall  -S   -Wno-write-strings  b.c
#g++ -Wall   -o b b.o  -lidn 

as b.s  -o b.o
ld --dynamic-linker  /lib/ld-linux.so.2   -lc    b.o   -emain 



