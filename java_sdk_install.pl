#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
./j2sdk1.4.2.sh
cd j2sdk1.4.2_12/
CLASSPATH=/root/j2sdk1.4.2_12/jre/lib/rt.jar
JAVA_HOME=/root/j2sdk1.4.2_12/
PATH=$PATH:/root/j2sdk1.4.2_12/
export PATH CLASSPATH JAVA_HOME

