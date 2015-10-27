#!/usr/bin/perl
#2011_11_10_15:48:12   ������   add by greshem
use Test::More tests => 70;


our %test_pack_cmd_str=(
".zip"=>"unzip -t ",
".rar"=>"rar t  ",
".cab"=>"cabextract -t", 	
".7z"=>" 7z x",
".cpio"=>" cpio -t  <  ",
".arj"=>"unarj x ", 
".tar.gz"=>"tar -tzvf ",
".tar.bz2"=>"tar -tjvf ", 
".tar"=>"tar -tf ",
);


#���� "(.*)(\.zip|\.rar|\.cab|\.tar.gz)$" ���������ַ���, ���ڶ�ƥ��. 
#��ȡname �ͺ�׺��.
sub build_array_regex_pattern_str(%)
{
	(my %input_hash)=@_;
	$pattern_str="(".join("|", keys(%input_hash)).")\$";
	#print $pattern_str."\n";
	$pattern_str=~s/\./\\\./g;
	#print $pattern_str."\n";
	$new_patter="(.*)".$pattern_str;
	return $new_patter;
}

$pattern_str=build_array_regex_pattern_str(%test_pack_cmd_str);

(my $name, $suffix)=("linux.tar.gz"=~/$pattern_str/);
is($suffix, ".tar.gz");

(my $name, $suffix)=("linux.tar.bz2"=~/$pattern_str/);
is($suffix, ".tar.bz2");

(my $name, $suffix)=("linux.cpio"=~/$pattern_str/);
is($suffix, ".cpio");

(my $name, $suffix)=("linux.cpio2"=~/$pattern_str/);
isnt($suffix, ".cpio");


(my $name, $suffix)=("linux...zip"=~/$pattern_str/);
is($suffix, ".zip");

(my $name, $suffix)=("linux...7z"=~/$pattern_str/);
is($suffix, ".7z");

(my $name, $suffix)=("linux...arj"=~/$pattern_str/);
is($suffix, ".arj");

(my $name, $suffix)=("linux...tar"=~/$pattern_str/);
is($suffix, ".tar");

(my $name, $suffix)=("linux...tar.tar"=~/$pattern_str/);
is($name, "linux...tar");
is($suffix, ".tar");

