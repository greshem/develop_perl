#!/usr/bin/perl -w

#2010_12_21_21:54:50 add by greshem
# todo  -I ÖØ¸´ £¬  make exec µÄÊ±ºò£¬ ÐèÒªÈ«²¿Ö´ÐÐÒ»±ß 
#
#2010_12_21_17:42:21 add by greshem, Ìí¼Ó¶àÄ¿±ê.  ´úÂë½øÐÐÕû½à£¬ ÇåË¬¶àÁË¡£ 
#20100104 Ìí¼ÓLmyUnitcodeµÄÖ§³Ö¡£ Ä¬ÈÏµÄÂ·¾¶ÊÇ /tmp2
#20100601 ²»¶Ôµ±Ç° Ä¿Â¼£¬ ¬ Ö»¶Ô @argv´«ÈëµÄÎÊÌâ£¬ Êä³ö MakefileÎÄ¼þ¡£ 
#20100622 make vim  / make exec Ö´ÐÐ  make gdb 
#20100623 mysql µÄÖ§³Ö£¬ gcc -S µÄÊ±ºò£¬ °Ñinclude Â·¾¶Ò²ÌîÉÏ¡£ 
#20100712 make log  /bin/cpp_template.pl Ìí¼ÓÉÏÈÕÖ¾ÏµÍ³¡£ 
#20100716 ÐÞ¸´ boost ²»ÄÜÕý³£Ê¹ÓÃµÄÎÊÌâ
#2010_09_01_16:05:11 add by greshem , zip 
#2010_09_19_19:05:28 add by greshem , ÒÀÀµµÄ¹ØÏµ Í¨¹ý   .cpp.o: ½â¾öµô¡£ 
use strict;

my %OBJS; # name.cpp $OBJS{"name.cpp"} => "name.o" 
my %COMP; # ±àÒëÁÐ±í.  "name.o"  =>"name.cpp"
my %SUFFIX;
my %MAIN; 	# º¬ÓÐ main µÄ ÎÄ¼þÃû£¬"name.cpp" => "name" 
		  	# "name.c" => "name" 
my %NOMAIN; # Ã»ÓÐmain µÄ .c .cpp ÎÄ¼þ. 

my $EXEC; # name.cpp ÓÐmain È»ºó¿ÉÒÔ Ìí¼Ó³É  $EXEC{"name"} => "name.cpp", ×¢ÒâÓÐmainº¯Êý²Å¿ÉÒÔ. 

my $LIBS = "";
my $LINES = 0;
my $CFFLAGS = "";
my $LDFLAGS="";
our @ARGV;
our @argv;


########################################################################
#main 
@argv=@ARGV;
if(scalar(@argv) ==0)
{
	die("Usage: $0 file1 file2 file3 . . . etc\n");
}
foreach (@ARGV)
{
	if( ! -f $_)
	{
		#continue;
		next;
	}
	if($_=~/\.c$/)
	{
		&ParseFile($_,"c");
	}
	elsif ($_=~/\.cpp$/)
	{
		
		&ParseFile($_,"cpp");
	}
	elsif( $_=~/\.h$/)
	{
		&ParseFile($_,"h");
	}
}
print "Total lines:" . $LINES . "\n";
WriteMakefile();

########################################################################
sub ParseFile
{
	my ($filename, $suffix) = @_;
	open CODE, "< $_" or die "Can not open $_($!)";
	my $obj = &GetObjName($filename, $suffix);
	$OBJS{$obj} = 1 if($suffix ne "h");
	&AddToCOMP($obj, $filename) if ($suffix ne "h");
	$SUFFIX{$obj} = $suffix if($suffix ne "h");
	my $have_main=0;
	while(<CODE>)
	{
		$LINES++;
	   	if(/#\s*include\s*"(\w+.h)"/)
	   	{
			&AddToCOMP($obj,$1);
			&AddToCOMP($obj, GetCppName($1,"h"));
	   	}
		
		if(/(main|ACE_TMAIN)\s*\(.*/)
		{
			my $main = &DeSuffix($filename,$suffix);
			$MAIN{$filename}=$main;
			$have_main++;
			print "MAIN:  ", $filename, "\t", $main, "\n";
		}
		########################################################################
		#check_qzjUnit($_);
		#check_lmyUnit($_);
		check_ace($_); 			check_boost($_); 		check_tinyxml($_);
		check_baselib($_); 		check_descramble($_); 	check_mysql($_);
		check_ext2fs($_); 		check_gtest($_); 		check_gd($_); 
		check_magiclib($_); 	check_zip($_); 			check_log4cpp($_);
		check_openssl($_); 		check_pthread($_); 		check_numerical($_);
		check_freetype2($_); 	check_png($_); 			check_octave($_);
		check_unp($_);			check_pcap($_);			check_beecrypt($_);
		check_crypt($_);		check_ctemplate($_); 	check_dlopen($_);	
		check_ncurses($_); 		check_stringprep($_);
	}
	close CODE;

	if( $have_main == 0) # Õâ¸öÎÄ¼þÃ»ÓÐ main º¯Êý. 
	{
			my $nomain = &DeSuffix($filename,$suffix);
			$NOMAIN{$filename}=$nomain;
			print "NOMAIN:  ", $filename, "\t", $nomain, "\n";
	}
}


########################################################################
sub DeSuffix
{
	my ($file,$suffix) = @_;
	#print "$file->$suffix\n";

	$file =~ s/.$suffix$//i
	   or die "Can not desuffix $suffix from $file";
	#print "$file->$suffix\n";
	return $file;
}

########################################################################
sub GetObjName
{
	my ($obj,$suffix) = @_;
	$obj =DeSuffix($obj,$suffix) . ".o";
	return $obj;
}

########################################################################
sub GetCppName
{
	my ($cpp,$suffix) = @_;
	$cpp =DeSuffix($cpp,$suffix) . ".cpp";
	return $cpp;
}

########################################################################
sub GetCName
{
	my ($cpp,$suffix) = @_;
	$cpp =DeSuffix($cpp,$suffix) . ".c";
	return $cpp;
}

########################################################################
sub AddToCOMP
{
	my($obj, $file) = @_;
	unless( defined($COMP{$obj}) and $COMP{$obj} =~ /$file/)
	{
	   $COMP{$obj} .= " " . $file if -e $file;
	}
}

########################################################################
sub AddBoostLIB
{
	my($boostlib) = @_;
	unless( defined($LIBS) and $LIBS =~ /$boostlib/)
	{
	   my $boostlibpath = "/usr/lib/libboost_$boostlib.so";
	   #$LIBS .= " " . $boostlib if -e $boostlibpath;

	   $LIBS .= " -lboost_" . $boostlib if -e $boostlibpath;
	  
		$boostlibpath = "/usr/lib64/libboost_$boostlib.so";
	   	$LIBS .= " -lboost_" . $boostlib if -e $boostlibpath;
	}

	print "Boost ",$boostlib . "\n";

}

########################################################################
#Parsing main
#Óöµ½ÕâÑùµÄÇé¿ö void main( 
#if(/^\s+(main)\s*\(.*/)
sub deal_with_main($)
{
	# my $have_main=0;
	# (my $line)=@_;
	# if($line=~/(main|ACE_TMAIN)\s*\(.*/)
	# {
	# 	my $main = &DeSuffix($filename,$suffix);
	# 	if(defined($EXEC))
	# 	{	
	# 		warn "Ò»¸öÄ¿Â¼ÏÂÓÐÁ½¸öMAINÎÄ¼þÁË\n";
	# 	#	die "Duplicate main():$EXEC $main";
	# 		print "main files ", $main,"\n";
	# 	}
	# 	$EXEC = $main;
	# 	$MAIN{$filename}=$main;
	# 	$have_main=1;
	# }
	# return $have_main;
}
########################################################################
#Parsing boost
#if(/#\s*inlcude\s*<boost/(\w+).h>/)
#if(/#\s*include\s*<boost.*\/(.+).hpp/)
#{
#printf "Boost 1 ÕÒµ½\n";
#    &AddBoostLIB($1);
#}
sub check_boost($)
{
	(my $line)=@_;
	if($line=~/#\s*include\s*<boost\/(.+).hpp/)
	{
		printf "Boost ÕÒµ½\n";
		&AddBoostLIB($1);
	}
}

########################################################################
#ACE
sub check_ace($)
{
	(my $line)=@_;
	if($line=~/#\s*include\s*<ace\/(.+).h/)
	{
		#print "ace\n";
		unless( defined($LIBS) and $LIBS =~ /lACE/)
		{
			$LIBS .= " -lACE";
		}
		unless ( $CFFLAGS =~ /-I\$\(ACE_ROOT\)/)
		{
			$CFFLAGS .= " -I\$(ACE_ROOT)";
		}
	}
}
########################################################################
#tinyxml
sub check_tinyxml($)
{
	(my $line)=@_;
	if($line=~/#\s*include\s*<(tinyxml|FMConfig).h/)
	{
		#print "ace\n";
		unless( defined($LIBS) and $LIBS =~ /ltinyxml/)
		{
			 $LIBS .= " -ltinyxml";
		}
	}
}

########################################################################
#lmyUnit
sub check_lmyUnit($)
{
	(my $line)=@_;
	if($line=~/#\s*include\s*<MLmyUnit.hpp/)
	{
	if($LIBS!~/lUnitLib/)
	{
		$LIBS.=" -lUnitLib -L/tmp2/LmyUnit/UnitLib -lpthread";
	}
	if($CFFLAGS!~/LmyUnit/)
	{
		$CFFLAGS.="-I /tmp2/LmyUnit/UnitLib/UnitCode  ";
	}
   }
}
########################################################################
#qzjUnit ¿â. 
sub check_qzjUnit($)
{
	(my $line)=@_;
	if($line=~/#\s*include\s*<QzjUnit.hpp/)
	{
		if($CFFLAGS!~/QzjUnit/)
		{
			$CFFLAGS.="-I /root/QzjUnit/QzjUnit  ";
		}
		if($LIBS!~/lpthread/)
		{
			$LIBS.=" -lpthread";
		}
	}
}
########################################################################
#################descramble 
sub check_baselib($)
{
	(my $line)=@_;
	if($line=~/\s*include\s*<Baselib.hpp/)
	{
		if($CFFLAGS!~/Baselib/)
		{
			$CFFLAGS.="-I /root/trunk/Baselib/  ";
		}
	
		if($LIBS!~/lpthread/)
		{
			$LIBS.=" -lpthread ";
		}
	
	}
}
########################################################################
#netclone Baselib
#
sub check_descramble($)
{
	(my $line)=@_;
   if($line=~/#\s*include\s*<(descramble).h/)
   {
		#print "scramble\n";
		unless( defined($LIBS) and $LIBS =~ /ldescramble/)
		{
			$LIBS .= " -ldescramble";
		}
   }
}
########################################################################
#mysql lib
sub check_mysql($)
{
	(my $line)=@_;
	if($line=~/#\s*include\s*<mysql./)
	{
		unless( defined($LIBS) and $LIBS =~ /lmysqlclient/)
		{
		 $LIBS .= " -lmysqlclient";
		}
		unless(defined($CFFLAGS) && $CFFLAGS=~/mysql/)
		{
			$CFFLAGS.="-I/usr/include/mysql";
		}
		unless(defined($LDFLAGS) and $LDFLAGS=~/mysql/)
		{
			$LDFLAGS.="-L /usr/lib/mysql";
		}
	}
}
########################################################################
#
sub check_ext2fs($)
{
	(my $line)=@_;
	if($line=~/^\s*#\s*include\s*<ext2fs|ExtFileSystem.hpp/)
	{
		unless( defined($LIBS) and $LIBS =~ /lext2fs/)
		{
		 $LIBS .= " -lext2fs -le2p";
		}
	}
}

########################################################################
#
sub check_gtest($)
{
	(my $line)=@_;
	if($line=~/^\s*#\s*include\s*<gtest/)
	{
		unless( defined($LIBS) and $LIBS =~ /lgtest/)
		{
		 $LIBS .= " -lgtest ";
		}

	}
}
########################################################################
#//gd
sub check_gd($)
{
	(my $line)=@_;
	if($line=~/^\s*#\s*include\s*<gd.h/)
	{
		unless( defined($LIBS) and $LIBS =~ /lgd/)
		{
		 $LIBS .= " -lgd";
		}

	}
}
########################################################################
#magiclib
sub check_magiclib($)
{
	(my $line)=@_;
	if($line=~/^\s*#\s*include\s*<magic./)
	{
		unless( defined($LIBS) and $LIBS =~ /lmagic/)
		{
			 $LIBS .= " -lmagic";
		}

	}
}

########################################################################
#zip
sub check_zip($)
{
	(my $line)=@_;
	if($line=~/^\s*#\s*include\s*<zip./)
	{
		unless( defined($LIBS) and $LIBS =~ /lzip/)
		{
			 $LIBS .= " -lzip";
		}

	}
}

########################################################################
#log4cpp
sub check_log4cpp($)
{

	(my $line)=@_;
	if($line=~/^\s*#\s*include\s*<log4cpp/)
	{
		unless( defined($LIBS) and $LIBS =~ /llog4cpp/)
		{
			 $LIBS .= " -llog4cpp -lpthread ";
		}
	}
}

########################################################################
#openssl
sub check_openssl($)
{

	(my $line)=@_;
	if($line=~/^\s*#\s*include\s*<openssl/)
	{
		#include
		if($CFFLAGS!~/openssl/)
		{
			$CFFLAGS.=" -I /usr/include/openssl ";
		}

		unless( defined($LIBS) and $LIBS =~ /lssl/)
		{
			 $LIBS .= " -lssl -lcrypto";
		}

	}
}


########################################################################
#pthread
#2010_09_07
sub check_pthread($)
{
	(my $line)=@_;

	if($line=~/^\s*#\s*include\s*<pthread/)
	{
		unless( defined($LIBS) and $LIBS =~ /lphtread/)
		{
			 $LIBS .= " -lpthread";
		}
	}
}


########################################################################
#ÊýÖµ¼ÆËã¿â
#2010_09_08_10:24:27 add by greshem
sub check_numerical($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<numerical_math.hpp/)
	{
		if($CFFLAGS!~/nummerical/)
		{
			$CFFLAGS.="-I /root/numerical_math/include/  ";
		}
	}
}
########################################################################
#freetype2.
#2010_09_09_10:18:15 add by greshem
sub check_freetype2($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<ft2build.h/)
	{
		#include
		if($CFFLAGS!~/freetype/)
		{
			$CFFLAGS.="-I /usr/include/freetype2/  ";
		}
		#lib
		if($LIBS!~/freetype/)
		{
			$LIBS.="-lfreetype ";
		}
	}
}
########################################################################
#png.
#2010_09_09add by greshem
sub check_png($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<png.h/)
	{
		#include
		if($CFFLAGS!~/libpng12/)
		{
			$CFFLAGS.="-I /usr/include/libpng12/  ";
		}
		#lib
		if($LIBS!~/lpng/)
		{
			$LIBS.="-lpng ";
		}
	}
}
########################################################################
#2010_09_13_15:59:33 add by greshem
#octave
sub check_octave($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<octave/)
	{
		#include
		if($CFFLAGS!~/octave/)
		{
			$CFFLAGS.=" -I /usr/include/octave-3.2.4/   ";
		}
		#lib
		if($LIBS!~/loctave/)
		{
			$LIBS.=" -L /usr/lib/octave-3.2.4/ -lcruft -loctave -loctinterp ";
		}
	}
}

########################################################################
#2010_09_14_12:31:35 add by greshem
sub check_stringprep($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<stringprep.h/)
	{
		#include
		#lib
		if($LIBS!~/lidl/)
		{
			$LIBS.=" -lidn ";
		}
	}
}


########################################################################
#2010_09_19_12:18:03 add by greshem
sub check_unp($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<unp.h>/)
	{
		#include
		if($CFFLAGS!~/unp/)
		{
			$CFFLAGS.=" -I /root/unix_networkd_programing/unp/lib/   ";
		}

		#lib
		if($LIBS!~/lunp/)
		{
			$LIBS.=" -lunp -L /root/unix_networkd_programing/unp/lib/";
		}
	}
}
########################################################################
##2010_09_20_11:09:30 add by greshem
sub check_pcap($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<pcap.h>/)
	{
		#include
		if($CFFLAGS!~/pcap/)
		{
			$CFFLAGS.=" -I /usr/include/pcap   ";
		}

		#lib
		if($LIBS!~/lpcap/)
		{
			$LIBS.=" -lpcap ";
		}
	}
}

########################################################################
#2010_09_24_15:32:29 add by greshem
sub check_beecrypt($)
{
	(my $line)=@_;
	if($line=~/^\s*#include\s*<beecrypt/)
	{
		#include
		if($CFFLAGS!~/beecrypt/)
		{
			$CFFLAGS.=" -I /usr/include/beecrypt   ";
		}

		#lib
		if($LIBS!~/lbeecrypt/)
		{
			$LIBS.=" -lbeecrypt ";
		}
	}
}
########################################################################
#crypt 2010_09_27_18:21:16 add by greshem
#Õâ¶ÎÊ±¼äÔÚ¿´ÃÜÂëÑ§£¬ CRYPTº¯ÊýÓÃµÄ±È½Ï¶à¡£ 
sub check_crypt($)
{

	(my $line) =@_;
	if($line=~/crypt\(/)
	{
		#lib
		if($LIBS!~/-lcrypt/)
		{
			$LIBS.=" -lcrypt ";
		}
	}
}

########################################################################
#2010_09_27_18:29:38 add by greshem
# ctemplate
sub check_ctemplate($)
{
	(my $line) =@_;
	if($line=~/^\s*#include\s*<ctemplate/)
	{
		#include lib
		if($LIBS!~/lctemplate/)
		{
			$LIBS.=" -lctemplate";
		}
	}
}

########################################################################
# dlopen
sub check_dlopen($)
{
	(my $line) =@_;
	if($line=~/^\s*#include\s*<dlfcn.h/)
	{
		#lib
		if($LIBS!~/-ldl/)
		{
			$LIBS.=" -ldl";
		}
	}

}
########################################################################
# ncurses
#2010_09_28_18:31:19 add by greshem
sub check_ncurses($)
{
	(my $line) =@_;
	if($line=~/^\s*#include\s*<ncurses.h/)
	{
		#lib
		if($LIBS!~/-lncurses/)
		{
			$LIBS.=" -lncurses";
		}
	}
}
#generate makefile

########################################################################
sub WriteMakefile
{
	our @ARGV;
	unlink "makefile" or die "Can not rm makefile ($!)" if -e "makefile";
	open MAKEFILE, ">Makefile" or die "Can not open makefile";
	select MAKEFILE;
	print "CC = gcc -g  -Wall \n";
	print "CPP = g++ -g  -Wall \n";
	# print "CC = gcc   -Wall \n";
	# print "CPP = g++ -Wall \n";
	if(scalar(values(%MAIN)) > 0 )
	{
	   print "EXEC = ";
		foreach  (values(%MAIN))
		{
			print $_."  ";
		}
		print "\n";
	}
	else
	{
	   print "EXEC = compile\n";
	   warn "No main set to compile\n";
		#$EXEC="compile";
	}

	print "MAIN_OBJS= ";
	foreach( values %MAIN)
	{
	   print $_ . ".o  ";
	}
	print "\n";

	print "NOMAIN_OBJS= ";
	foreach( values %NOMAIN)
	{
	   print $_ . ".o ";
	}

	print "\n";
	print "CFLAGS +=$CFFLAGS -Wno-write-strings\n";
	print "LDFLAGS += $LDFLAGS\n";
	print "LIBS +=$LIBS\n";
	print "\n";

	print 'all: $(EXEC)' . "\n";
	print '$(EXEC): $(MAIN_OBJS)  $(NOMAIN_OBJS) ' . "\n";
	print "\t" . '$(CPP) $(LDFLAGS) -o $@ $@.o $(NOMAIN_OBJS) $(LIBS)' . "\n";
	print "\n";
	print "vim: \n";
	print "\tvim ", $argv[0],"\n";

	my $bin=$argv[0];
	$bin=~s/\.cpp//g;
	$bin=~s/\.c//g;
	print 'exec: $(EXEC) ';
	print "\n";
	print "\t".'$(EXEC'."\n";
	print "\t".'./$@'."\n";;

	print "log:\n";
	print "\t vim ",$bin,"\.log\n";
	print "gdb: \n";
	print "\tgdb ./", $bin,"\n";
	print <<EOF
.PRECIOUS:%.cpp %.c %.C
.SUFFIXES:
.SUFFIXES:  .c .o .cpp .ecpp .pc .ec .C

.cpp.o:
	\$(CPP) -c -o \$*.o \$(CFLAGS) \$(INCLUDEDIR)  \$*.cpp
	\$(CPP) -S   \$(CFLAGS) \$(INCLUDEDIR)  \$*.cpp

.c.o:
	\$(CC) -c -o \$*.o \$(CFLAGS) \$(INCLUDEDIR) \$*.c
	\$(CC) -S   \$(CFLAGS) \$(INCLUDEDIR) \$*.c

.C.o:
	\$(CC) -c -o \$*.o \$(CFLAGS) \$(INCLUDEDIR) \$*.C	
	\$(CC) -S   \$(CFLAGS) \$(INCLUDEDIR) \$*.C	

.ecpp.C:
	\$(ESQL) -e \$(ESQL_OPTION) \$(INCLUDEDIR) \$*.ecpp 
	
.ec.c:
	\$(ESQL) -e \$(ESQL_OPTION) \$(INCLUDEDIR) \$*.ec
	
.pc.cpp:
	\$(PROC)  CPP_SUFFIX=cpp \$(PROC_OPTION)  \$*.pc
	
EOF
;
	# while(my($key,$value) = each %COMP)
	# {
	#    print "$key:$value\n";
	#    my $name;
	#    if($SUFFIX{$key} eq "cpp")
	#    {
	# 	$name = GetCppName($key,"o");
	#    }
	#    else
	#    {
	# 	$name = GetCName($key,"o");
	#    }
	#    print "\t" . '$(CC) $(CFLAGS) -c ' . "$name\n";
	#    print "\t" . 'gcc -S   $(CFLAGS) ' . "$name\n";
	#    print "\n";
	# }

	print "\n";
	print "clean:\n";
	print "\t" . '-rm -f $(EXEC) *.o *.s *.log *.obj' . "\n";
	close MAKEFILE;
	select STDIN;
}
########################################################################
#foreach(glob "*.cpp")
#{
#&ParseFile($_,"cpp");
#}

#foreach(glob "*.h")
#{
#&ParseFile($_,"h");
#}
#foreach(glob "*.c")
#{
#&ParseFile($_,"c");
#}


