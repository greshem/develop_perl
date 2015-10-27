#!/usr/bin/perl
use Template;
my $config=undef;
my @cpp;
if(scalar( @ARGV) ==0 )
{
	@cpp=map { $_=~s/.cpp//g;$_; } glob("*.cpp");
}
else
{
	@cpp= map { $_=~s/.cpp//g;$_; } grep { /cpp$/i} @ARGV; 	
}
my  $template= Template->new();
my $vars=
{
	files=>\@cpp,
};
$template->process(\*DATA, $vars, "Makefile") || die $template->error();
__DATA__
################OPTION###################
CCOMPILE = gcc
CPPCOMPILE = g++
COMPILEOPTION = -c -Wall -static -pthread -O -DNDEBUG -DLINUXCODE
#INCLUDEDIR = -I /root/QzjUnit/QzjUnit/
INCLUDEDIR = -I /tmp2/trunk/Baselib/

LINK = g++
LINKOPTION = -o output -lpthread -ltermcap -lutil   -lgpm -ldl
LIBDIRS =  -I /root/QzjUnit/QzjUnit/
OBJS = 	[% FOREACH file IN files %] [% file %].o [% END %]  	    
OUTPUT = output
APPENDLIB = 
PROC_OPTION = DEFINE=_PROC_ MODE=ORACLE CODE=CPP
ESQL_OPTION = 
################OPTION END################
ESQL = esql
PROC = proc
$(OUTPUT):$(OBJS) $(APPENDLIB)
	$(LINK)  $(OBJS) $(LINKOPTION) $(LIBDIRS)  $(APPENDLIB)

clean: 
	rm -f $(OBJS)
	rm -f $(OUTPUT)
all: clean $(OUTPUT)
.PRECIOUS:%.cpp %.c %.C
.SUFFIXES:
.SUFFIXES:  .c .o .cpp .ecpp .pc .ec .C

.cpp.o:
	$(CPPCOMPILE) -c -o $*.o $(COMPILEOPTION) $(INCLUDEDIR)  $*.cpp

.c.o:
	$(CCOMPILE) -c -o $*.o $(COMPILEOPTION) $(INCLUDEDIR) $*.c

.C.o:
	$(CPPCOMPILE) -c -o $*.o $(COMPILEOPTION) $(INCLUDEDIR) $*.C	

.ecpp.C:
	$(ESQL) -e $(ESQL_OPTION) $(INCLUDEDIR) $*.ecpp 
	
.ec.c:
	$(ESQL) -e $(ESQL_OPTION) $(INCLUDEDIR) $*.ec
	
.pc.cpp:
	$(PROC)  CPP_SUFFIX=cpp $(PROC_OPTION)  $*.pc
