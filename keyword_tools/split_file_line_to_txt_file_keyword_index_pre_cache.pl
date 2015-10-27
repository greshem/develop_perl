#!/usr/bin/perl
sub get_now()
{
	use POSIX 'strftime';
	$cur_time=POSIX::strftime('%Y-%m-%d-%T_%A',localtime(time()));
	print "nowTime -> ", $cur_time,"\n";
	return $cur_time;
}


my $file=shift or die("Usage: $0 input_file \n");

open(FILE, $file) or die("open file error $file, $!\n");

for(<FILE>)
{
	chomp;
	create_file($_);	
}

sub create_file($)
{
	(my $filename)=@_;
	open(FILE, "> $filename.txt") or die("open $filename error \n");
	my $cur_time=get_now();
	print FILE "#$cur_time add by gresheme \n";
	print FILE $filename."\n";
	
	my $refer=reference_by();
	print FILE  $refer;
	close(FILE);
}

sub reference_by()
{
	my $str=<<EOF
#进一步参看   /root/develop_perl/english_symbols_chars_sed_replace.pl 
EOF
;
}
