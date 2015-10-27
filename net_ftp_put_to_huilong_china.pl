#!/usr/bin/perl -w

use Net::FTP;
use File::Basename;

### FTP VARIABLES ###
$ftpsite=	"202.75.219.195";
$username=	"qianzhongjie"; 
$password=	"echengqian";
$prefix=	"wwwroot";
$zipfile = "init";
$datafile=	"$prefix/$zipfile";
$save_prefix = "/tmp";
$saved_file = "$save_prefix/$zipfile";
####################

#$deflate_file = "CN747.DBF";

sub put($) {

	($file)=@_;
	$basename=basename($file);

	$ftp = Net::FTP->new($ftpsite) or die ("Couldn't connect to ftp site!! $!\n");
	print "Connected to server: $ftpsite\n";

	$ftp->login($username,$password) or die ("Could not log into server $ftpsite\n"); 
	print "Logged into $ftpsite\n";

	$ftp->binary or die ("Problem setting type of transfer: $!\n");
	#$ftp->get($datafile, $saved_file) or die ("Couldn't get $datafile : $!\n");

	$ftp->put("$file", "wwwroot/$basename") or die ("couldnt put ip \n");
	print "Successfully put ";
	print "URL is :  http://www.huilong-china.cn/$basename\n";	
	if ($ftp->close()) {
		print "Connection closed\n";
	}
}
@ARGV or die("Usage: $0 file1 file2 ...");
@files=@ARGV;
for (@files)
{
put($_);
}
