#!/usr/bin/perl  
use 	MIME::Lite;           
use 	Net::SMTP;  
        	
if($ARGV[0] eq "" )  
{ 
	print " Usage ",$ARGV[-1],"file\n";
	exit(-1);
}
open(FILE, $ARGV[0])  or die "cannot open the file \n";
@msg=<FILE>;   
my $msg2=MIME::Lite->new();
#################################################################
#	添加附件的代码。 
#	$msg2->attach(
#    Type     => 'image/gif', # the attachment mime type
#    Path     => '/root/a.gif', # local address of the attachment
#    Filename => 'asuwish.gif', # the name of attachment in email
#    );
#	my $str=$msg2->as_string();

#############
#另外的一种构造函数。 
#$smtp   =   Net::SMTP->new('192.168.1.2');  
$smtp   =   Net::SMTP->new('192.168.10.245',  
						Hello   =>   'qianlong2.net',  
						Timeout   =>   30,  
						Debug       =>   1,  
		)   or   die ("create smtp error\n";      
$smtp->mail()   or   die;  
$smtp->to('qianzj@qianlong2.net');  
#$smtp->auth("qianzj", "0************3","PLAIN");
#$smtp->data("From: qiazonjie <qianzhongie@gmail.com> \r\n To: Qianzhogjie <qianzj@qianlong2.nete> \r\n Subject: lovleove  \r\nTo:   postmaster\n");  
$smtp->data();
$smtp->datasend("From: Qzj<qianzj\@qianlong2.net>\n");
$smtp->datasend("To: Qzj<qianzj\@qianlong2.net>\n");
#$smtp->datasend("Subject: This is a test \n");
$smtp->datasend("Subject: ".$ARGV[0]."\n");
$smtp->datasend("testt start \n");  
$smtp->datasend("\n");  
 #         $smtp->datasend("#########################################\n");  
 
for (@msg)
{
	$smtp->datasend($_);  
}	 
$smtp->datasend($str);
# $smtp->datasend($msg);
$smtp->dataend();  
           
$smtp->quit;       
close(FILE);
