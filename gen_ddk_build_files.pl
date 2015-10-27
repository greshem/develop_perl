#!/usr/bin/perl

#2010_11_11_04:28:10 add by greshem
# 生成 DDK 的一些配置文件， 之后， build 就可以编译了。 
use Cwd;
use File::Basename;

print "gen MAKEFILE\n";
open(FILE, ">MAKEFILE") or die("create file error\n");
print FILE "\!INCLUDE \$(NTMAKEENV)\makefile.def\r\n";
close(FILE);

print "gen sources\n";

$pwd=getcwd();
#print $pwd."\n";;
#print basename($pwd);
$targetname=basename($pwd);

open(SOURCES, "> sources") or die("create file error\n");

print SOURCES  "TARGETNAME=".$targetname."\r\n";
print SOURCES  "TARGETPATH=obj\r\n";
print SOURCES  "TARGETTYPE=DRIVER\r\n";
print SOURCES  "\r\n";
print SOURCES  "\r\n";
print SOURCES  "\r\n";


print SOURCES <<EOF
!if "\$(DDK_TARGET_OS)"!="WinXP"
C_DEFINES=\$(C_DEFINES) -DW2K=1
TARGETLIBS=\$(DDK_LIB_PATH)\csq.lib
!endif
EOF
;

@allfiles=grep { -f } glob("*.cpp");
$tmp=join(" ", @allfiles );
@allfiles=grep { -f } glob("*.c");
$tmp=join(" ", @allfiles );
@allfiles=grep { -f } glob("*.rc");
$tmp=join(" ", @allfiles );




print SOURCES "SOURCES=".$tmp;
close(SOURCES);

open(DIRS, "> dirs") or die("open dirs error\n");
print DIR "DIRS= \\\r\n";
print DIR "\. \\\r\nj";
close(DIR);


