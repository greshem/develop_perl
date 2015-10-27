#!/usr/bin/perl
use warnings;
use strict;
use Net::SSH2;
use Data::Dumper;

# my $host = $ARGV[0]; 
# # my $username = $ARGV[1];
# my $password = $ARGV[2];


my $host = "192.168.21.172";
my $username = "root";
my $password = "123456";

print "will login $host\n";

my $ssh2 = Net::SSH2->new();
$ssh2->connect($host) or die "Unable to connect $host\n";

#this works for passwords 
$ssh2->auth_password($username,$password) or die "Unable to login $host \n";



#shell use
my $chan2 = $ssh2->channel();
$chan2->blocking(1);  #不要阻塞  会丢失数据, 有些命令不能执行成功" 
#$chan2->blocking(0);
$chan2->shell();

print $chan2 "echo  bb\n";
print $chan2 "echo  bb\n";
print $chan2 "echo  bb\n";
print $chan2 "uname -a \n";
sleep(1);
my @all=<$chan2->sock()>;
print @all;


print $chan2 "ifconfig \n";
sleep(1);
my @all=<$chan2>;
print @all;



#for(<$chan2>)
#{
#    print "LINE : $_\n";
#}
#while <$chan2>;
print $chan2 "who\n";
print "LINE : $_\n" while <$chan2>;
$chan2->close;

$ssh2->disconnect();
