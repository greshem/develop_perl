#!/usr/bin/perl -w

use Net::FTP;
use File::Basename;

### FTP VARIABLES ###
$ftpsite=	"66.79.178.34";
$username=	"teresaweiba"; 
$password=	"admin123";
$prefix=	"wwwroot";
$zipfile = "init";
$datafile=	"$prefix/$zipfile";
#$save_prefix = "/tmp";
#$saved_file = "$save_prefix/$zipfile";
####################

#$deflate_file = "CN747.DBF";

sub get() {

	#($file)=@_;
	#$basename=basename($file);

	$ftp = Net::FTP->new($ftpsite) or die ("Couldn't connect to ftp site!! $!\n");
	print "Connected to server: $ftpsite\n";

	$ftp->login($username,$password) or die ("Could not log into server $ftpsite\n"); 
	print "Logged into $ftpsite\n";

	$ftp->binary or die ("Problem setting type of transfer: $!\n");
	$ftp->get("wwwroot/petty_china_new/product.ini", "/root/product.ini") or die ("Couldn't get $datafile : $!\n");
	
	print "save /root/product.ini successfully\n";
	# $ftp->put("$file", "wwwroot/$basename") or die ("couldnt put ip \n");
	# print "Successfully put ";
	# print "URL is :  http://www.huilong-china.cn/$basename\n";	
	# if ($ftp->close()) {
	# 	print "Connection closed\n";
}
;
get();
