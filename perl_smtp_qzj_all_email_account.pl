#!/usr/bin/perl  
use MIME::Lite;
use Net::SMTP;
$text  = shift or die("Usage: $0 text email_addr\n");
$email = shift or die("Usage: $0 text email_addr\n");
if ( $email !~ /@/ ) 
{
    die(" $email   is not email addr\n");
}

open( FILE, $text ) or die "cannot open the file \n";
@msg = <FILE>;
my $msg2 = MIME::Lite->new();

$smtp = Net::SMTP->new(
    'mail.sina.com',
    Hello   => 'mail.sina.com',
    Timeout => 30,
    Debug   => 1,
) or die;
$smtp->mail() or die;

#$smtp->to('wangyl@qianlong2.net');
$smtp->to($email);

$smtp->auth("qianzhongjie83", "q********************n","PLAIN") or die("auth error\n");
#$smtp->data("From: qiazonjie <qianzhongie@gmail.com> \r\n To: Qianzhogjie <qianzj@qianlong2.nete> \r\n Subject: lovleove  \r\nTo:   postmaster\n");
$smtp->data();
$smtp->datasend("From: Qzj<qianzj\@qianlong2.net>\n");
$smtp->datasend("To: $email\n");

#$smtp->datasend("Subject: This is a test \n");
$smtp->datasend( "Subject: " . $text . "\n" );
$smtp->datasend("text start \n");
$smtp->datasend("\n");

#         $smtp->datasend("#########################################\n");
for (@msg) 
{

    $smtp->datasend($_);
}

#$smtp->datasend($str);
#$smtp->datasend($msg);
#$smtp->dataend();

$smtp->quit;
close(FILE);
