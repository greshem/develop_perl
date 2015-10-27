#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
http://svn.cntnsoft.int/project/desktone

http://svn.cntnsoft.int/transoft/eschoolbag
http://svn.cntnsoft.int/transoft/rsctl-center
http://svn.cntnsoft.int/transoft/tvm4
http://svn.cntnsoft.int/transoft/vdi



#==========================================================================
#只能用ip.
http://172.16.1.251/vsdp4i/storage/
http://svn.cntnsoft.int/vsdp4i/storage/
http://svn.cntnsoft.int/vsdp4i/servicemanagement/
http://svn.cntnsoft.int/vsdp4i/serviceenabler/





