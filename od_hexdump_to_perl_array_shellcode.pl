#!/usr/bin/perl
if( -f "gpxe_hex.pl")
{
	print "#[Warn]: gpxe_hex.pl while  be delete \n";
}

open(OUTPUT, "> gpxe_hex.pl") or die("create file error \n");
print OUTPUT  <<EOF
open(FILE, ">/tmp/gpxe_port_change.bin");
binmode FILEHANDLE, ":raw";
my \$buffer= 
EOF
;
#-A address   没有address 偏移地址. 
#-t 每个字节 打印.  便于输出到per里面去. 
 open( PIPE, "od -An -t x1  gpxe -v    |") or die(" open file error \n");

for(<PIPE>)
{
	chomp;
	$_=~s/ /\\x/g;	
	print OUTPUT  "\"$_\"\.\n";
}
print OUTPUT  ";\n";


print OUTPUT <<EOF
print FILE  \$buffer;
close(FILE);
print "#/tmp/gpxe_port_chanage.bin  generated \\n"; 
EOF
;

print "#[NOTICE]: mdf  gpxe_hex.pl ,  and exec it \n";

print "#[NOTICE]:  find pattern  5c\\x11  change to  b8\\x22\n";
print "#	           as        4444    ->         8888 \n"
