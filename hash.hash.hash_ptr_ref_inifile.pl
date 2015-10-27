#!/usr/bin/perl
use Data::Dumper;
use File::Copy;

#引用这里的元素,  需要通过$ini->{"key"}->{"value"} 的方式, 指针的方式.
sub load_ini_file($)
{
	$ini={};
	(my $file)=@_;
	open(FILE, $file)or die("open file error\n");
	while(<FILE>)
	{
		chomp;
		if(/\s*\[\s*(\S+)\s*\]\s*/)
		#if(/[\s*(\S+)\s*]/)
		{
			$current_sec=$1;
			$ini->{$current_sec}={};
		}
		elsif(/\s*(\S+)\s*=\s*(\S*)\s*/)
		{
			$ini->{$current_sec}->{$1}=$2;
		}
	}
	return $ini
}

#print  Dumper($ini);
#print "success\n";
if($0=~/ini_parse_to_hash.pl$/)
{
	my $file=shift or die("Usage: $0 file.ini\n");
	#$file
	my $hash= load_ini_file($file);
	do("./lib_tools.pl");
	
	print_sections_values($hash);

}


sub each_section($)
{
	(my %ini_tmp)=@_;
	
	foreach  (keys(%{$ini_tmp}))
	{
		#print "[", $_,"]\n";
		#gen_leftmenu($ini, $_);
		print $_,"\n";	
	}
}

each_section($ini);
