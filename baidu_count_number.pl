#!/usr/bin/perl
#2010_08_21_17:29:54 add by qzj
#keyword
use strict;
use warnings;
use LWP::UserAgent;
use Getopt::Std;
use Image::Size;

my $keyword=shift or die("Usgae: $0  keyword \n");
my $ua = LWP::UserAgent->new;
$ua->timeout(10);
$ua->env_proxy;
	
my $response = $ua->get("http://www.baidu.com/s?wd=".$keyword);

unless ($response->is_success) {
		print "(failed!!! ".$response->code.")\n";}
	
my $htm =  $response->content;
my ($count)= ($htm=~/.*找到相关网页(.*)篇.*/);
if(!defined $count)
{
  ($count)= ($htm=~/.*找到相关网页(.*)篇.*/);
}
my $newurl = $response->base;

print "count ",$count,"\n";
