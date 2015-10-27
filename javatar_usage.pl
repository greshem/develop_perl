#!/usr/bin/perl
########################################################################
#2011_03_01_18:31:38   ĞÇÆÚ¶ş   add by greshem
foreach (<DATA>)
{
	print $_;
}
__DATA__
java -classpath /usr/share/java/tar-2.5.jar:/usr/share/java/javatar-2.5.jar com.ice.tar.tar -tzf /tmp/global-5.9.3.tar.gz

