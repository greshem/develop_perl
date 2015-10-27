#!/usr/bin/perl

my $file=shift or die("usage: $0  input_file.cpp \n");

sub file_get_contents($)
{
	(my $filename)=@_;
	open(FILE, $filename);
	$/=undef;
	$string=(<FILE>);
	close(FILE);
	$/="\n";
	return  $string ;
}

my $str=file_get_contents($file);

$str=~s/\n(.*reinterpret_cast<HANDLE>\(\d\),\n)/\n#ifdef __WIN32__\n$1#else\n\t100,\n#endif \n/g;

open(FILE, ">$file") or die("write $file error \n");

print FILE  $str;

close(FILE);




