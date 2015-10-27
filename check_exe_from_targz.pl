#!/usr/bin/perl


check_cur_dir();

sub check_cur_dir()
{
	for $each_targz (glob("*.tar.gz"))
	{
		if(check_targz_have_exe($each_targz))
		{
			#print "OK: ".$each_targz."编译成功有exe 程序 \n";
		}
		else
		{
			#print $each_targz."编译失败没有exe 程序 \n";
			print "tar -xzvf $each_targz \n";
		}
	}
}

sub check_targz_have_exe($)
{
	(my $filename)=@_;
	open(PIPE, "tar -tzf  $filename  |") or die("open pipe error  $filename ,  $! \n");
	for (<PIPE>)
	{
		if($_=~/exe$|dll$/i)
		{
			return 1;
		}
	}
	close(PIPE);
	return undef;
}
