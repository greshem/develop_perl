#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

cd /root/gdb_debug/gdb_pthread/

readelf  seek_fseek_speed_pthread
#dump all 
readelf -a   seek_fseek_speed_pthread
# -S �г�����Ķ�. 
readelf  -S seek_fseek_speed_pthread
########################################################################
#readlef 
  -w[lLiaprmfFsoR] or
  --debug-dump[=rawline,=decodedline,=info,=abbrev,=pubnames,=aranges,=macro,=frames,=str,=loc,=Ranges]
                         Display the contents of DWARF2 debug sections

readelf  -wi seek_fseek_speed_pthread

more info : http://www.dwarfstd.org/
