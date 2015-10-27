#!/usr/bin/perl -w
#20100104 Ìí¼ÓLmyUnitcodeµÄÖ§³Ö¡£ Ä¬ÈÏµÄÂ·¾¶ÊÇ /tmp2
#20100601 ²»¶Ôµ±Ç° Ä¿Â¼£¬ ¬ Ö»¶Ô @argv´«ÈëµÄÎÊÌâ£¬ Êä³ö MakefileÎÄ¼þ¡£ 
#20100622 make vim  / make exec Ö´ÐÐ  make gdb 
#20100623 mysql µÄÖ§³Ö£¬ gcc -S µÄÊ±ºò£¬ °Ñinclude Â·¾¶Ò²ÌîÉÏ¡£ 
#20100712 make log  /bin/cpp_template.pl Ìí¼ÓÉÏÈÕÖ¾ÏµÍ³¡£ 
#20100716 ÐÞ¸´ boost ²»ÄÜÕý³£Ê¹ÓÃµÄÎÊÌâ
#
#use strict;

my %OBJS;
my $EXEC;
my %COMP;
my %SUFFIX;
my $LIBS = "";
my $LINES = 0;
my $CFFLAGS = "";
my $LDFLAGS="";
our @ARGV;
our @argv;
sub DeSuffix
{
	my ($file,$suffix) = @_;
	#print "$file->$suffix\n";

	$file =~ s/.$suffix$//i
	   or die "Can not desuffix $suffix from $file";
	#print "$file->$suffix\n";

	return $file;
}

sub GetObjName
{
	my ($obj,$suffix) = @_;
	$obj =DeSuffix($obj,$suffix) . ".o";
	return $obj;
}

sub GetCppName
{
	my ($cpp,$suffix) = @_;
	$cpp =DeSuffix($cpp,$suffix) . ".cpp";
	return $cpp;
}

sub GetCName
{
	my ($cpp,$suffix) = @_;
	$cpp =DeSuffix($cpp,$suffix) . ".c";
	return $cpp;
}

sub AddToCOMP
{
	my($obj, $file) = @_;
	unless( defined($COMP{$obj}) and $COMP{$obj} =~ /$file/)
	{
	   $COMP{$obj} .= " " . $file if -e $file;
	}
}

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
sub ParseFile
{
	my ($filename, $suffix) = @_;

	open CODE, "< $_" or die "Can not open $_($!)";

	my $obj = &GetObjName($filename, $suffix);
	$OBJS{$obj} = 1 if($suffix ne "h");
	&AddToCOMP($obj, $filename) if ($suffix ne "h");
	$SUFFIX{$obj} = $suffix if($suffix ne "h");
	#print "$obj:";


	while(<CODE>)
	{
	   ++$LINES;
		##################################	
	   	#Parsing main
		if(/(main|ACE_TMAIN)\s*\(.*/)
		#Óöµ½ÕâÑùµÄÇé¿ö void main( 
		#if(/^\s+(main)\s*\(.*/)
	   	{
				my $main = &DeSuffix($filename,$suffix);
				if(defined($EXEC))
				{	
					warn "Ò»¸öÄ¿Â¼ÏÂÓÐÁ½¸öMAINÎÄ¼þÁË\n";
				#	die "Duplicate main():$EXEC $main";
					print "main files ", $main,"\n";
				}
				$EXEC = $main;
	   	}

		##################################	
	   	#Parsing #include "*.h"
	   	if(/#\s*include\s*"(\w+.h)"/)
	   	{
			#print $1;
			&AddToCOMP($obj,$1);
			&AddToCOMP($obj, GetCppName($1,"h"));
	   	}
		
		##################################	
	   	#Parsing boost
	   	#if(/#\s*inlcude\s*<boost/(\w+).h>/)
	   	#if(/#\s*include\s*<boost.*\/(.+).hpp/)
	   	#{
	   	#printf "Boost 1 ÕÒµ½\n";
		#    &AddBoostLIB($1);
		#}
	   	if(/#\s*include\s*<boost\/(.+).hpp/)
	   	{
			printf "Boost ÕÒµ½\n";
			&AddBoostLIB($1);
	   	}
		##################################	
		#ACE
	   	if(/#\s*include\s*<ace\/(.+).h/)
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
		##################################	
		#tinyxml
	   	if(/#\s*include\s*<(tinyxml|FMConfig).h/)
	   	{
			#print "ace\n";
			unless( defined($LIBS) and $LIBS =~ /ltinyxml/)
			{

				 $LIBS .= " -ltinyxml";
			}
	   	}
		##################################	
		#lmyUnit
		#	lmyunit qzj 
	   	#	if(/#\s*include\s*<MLmyUnit.hpp/)
	   	#	{
		#	if($LIBS!~/lUnitLib/)
		#	{
		#		$LIBS.=" -lUnitLib -L/tmp2/LmyUnit/UnitLib -lpthread";
		#	}
		#	if($CFFLAGS!~/LmyUnit/)
		#	{
		#		$CFFLAGS.="-I /tmp2/LmyUnit/UnitLib/UnitCode  ";
		#	}
		#   }

		#################################
		#qzjUnit ¿â. 
		if(/#\s*include\s*<QzjUnit.hpp/)
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
		#################descramble 
	   if(/#\s*include\s*<(descramble).h/)
	   {
		#print "scramble\n";
			unless( defined($LIBS) and $LIBS =~ /ldescramble/)
			{
				$LIBS .= " -ldescramble";
			}
	   }
		##############################
		#mysql lib
		if(/#\s*include\s*<mysql./)
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
		################################################################################	
		if(/#\s*include\s*<ext2fs/)
		{
			unless( defined($LIBS) and $LIBS =~ /lext2fs/)
			{
			 $LIBS .= " -lext2fs -le2p";
			}

		}
		##############################
		#magiclib
		if(/#\s*include\s*<magic./)
		{
			unless( defined($LIBS) and $LIBS =~ /lmagic/)
			{
				 $LIBS .= " -lmagic";
			}

		}
		##############################
	}
	close CODE;
}

#generate makefile

sub WriteMakefile
{
	our @ARGV;
	unlink "makefile" or die "Can not rm makefile ($!)" if -e "makefile";
	open MAKEFILE, ">Makefile" or die "Can not open makefile";
	select MAKEFILE;
	print "CC = g++ -g  -Wall \n";
	if(defined($EXEC))
	{
	   print "EXEC = $EXEC\n";
	}
	else
	{
	   print "EXEC = \n";
	   warn "No main\n";
	}

	print "OBJS = ";
	foreach( keys %OBJS)
	{
	   print $_ . " ";
	}
	print "\n";
	print "CFLAGS +=$CFFLAGS -Wno-write-strings\n";
	print "LDFLAGS += $LDFLAGS\n";
	print "LIBS +=$LIBS\n";
	print "\n";

	print 'all: $(EXEC)' . "\n";
	print '$(EXEC): $(OBJS)' . "\n";
	print "\t" . '$(CC) $(LDFLAGS) -o $(EXEC) $(OBJS) $(LIBS)' . "\n";
	print "\n";
	print "vim: \n";
	print "\tvim ", $argv[0],"\n";

	$bin=$argv[0];
	$bin=~s/\.cpp//g;
	$bin=~s/\.c//g;
	print "exec: \n";
	print "\t ./", $bin,"\n";

	print "log:\n";
	print "\t vim ",$bin,"\.log\n";
	print "gdb: \n";
	print "\tgdb ./", $bin,"\n";

	while(my($key,$value) = each %COMP)
	{
	   print "$key:$value\n";
	   my $name;
	   if($SUFFIX{$key} eq "cpp")
	   {
		$name = GetCppName($key,"o");
	   }
	   else
	   {
		$name = GetCName($key,"o");
	   }
	   print "\t" . '$(CC) $(CFLAGS) -c ' . "$name\n";
	   print "\t" . 'gcc -S   $(CFLAGS) ' . "$name\n";
	   print "\n";
	}

	print "\n";
	print "clean:\n";
	print "\t" . '-rm -f $(EXEC) *.o *.s *.log' . "\n";
	close MAKEFILE;
	select STDIN;
}
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
@argv=@ARGV;
foreach (@ARGV)
{
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
WriteMakefile;
