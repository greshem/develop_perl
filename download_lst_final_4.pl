#!/usr/bin/perl
use Template;


$file= shift or die("usage: $0 download.list\n");
@a=get_array_from_file($file);

#print @a;
sub get_array_from_file($)
{
	(my $file)=@_;
	@array;
	open(FILE, $file) or die("open file error $! \n");
	foreach(<FILE>)
	{
		chomp;
		if(/\s*(http:\/\/\S+)\s+.*/)
		{
			push(@array, $1);
		}
	}
	return @array;
}

my $var= {
	header=>"#############################################################",
	title=>"title",
	array=>\@a,
	footer=>"##############################################################",
};
###############################################################################
my $config=undef;
my $template = Template->new();
$template->process(\*DATA, $var) || die $template->error();

__DATA__
#只传入两个参数。 in_url out_dir/out_file 
myWget()
{
	if [ ! -f $2/$(basename $1)  ];then
		if [ ! -d $2 ];then
			mkdir $2;
		fi
		echo $1 $2 >> downding
		echo wget $1 -P $2
		wget $1 -P $2
		if [  ! $?  -eq 0 ];then
			echo "wget $1 error "
			echo "wget $1 error " >> wget_error.log
		fi
	else
		echo $2/$(basename $1) , "have download";
	fi
}

[% FOREACH url IN array %]
myWget [%url %]	 output[%END%]
