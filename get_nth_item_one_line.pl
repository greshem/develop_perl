#!/usr/bin/perl
#testunit();
my $file=shift or die("Usage: $0 input.file\n");

change_one_file($file);

#把文件的行  /path/path2/target_name/build.dsp 最后的dsp 文件修改成
#			/path/path2/target_name/target_name.dsp
sub change_one_file($)
{
	(my $file)=@_;
	open(FILE, $file) or die("open file $file error $!\n");
	for(<FILE>)
	{
		chomp;	
		my @array=split(/\//, $_);
		my @output;
		my $count=$#array;
		$item=get_nth_item($count, @array);
		$target= get_nth_item($count-1, @array);
		#print "最后一个值是".$item."\n";
		#print "最后第二个是".$target."\n";;
		#if($item=~/.*\.(.*)/) #dsw dsp 可以这么修改.
		if($item=~/.*(_release.bkl|_debug.bkl)/) #build_release.bkl
		{
			$item_new=$target.$1;
			#print "$item 要修改成    $item_new \n";
			@output=set_nth_item($item_new ,$count, @array);
		}
		else
		{
			print "错误: 没有后缀名 不做修改\n";
			next;
		}
		print "svn mv ";
		print join("/", @array)."\t\t";;
		print join("/",  @output)."\n";
	}
}

#print get_one_row_last_item(qw(aa bb cc));

sub testunit()
{
	@array=qw(aa bb cc dd);
	@tmp=set_one_row_last_item("fffff",  @array);
	#@tmp=set_nth_item("fffff", 1111, @array);
	print  join("|", @tmp)."\n";
}
########################################################################
sub set_one_row_last_item($@)
{
	(my $item, @array)=@_;
	$array[$#array]=$item;
	return @array;
}

sub get_nth_item($@)
{
	(my  $offset, @array)=@_;
	if($offset >  $#array)
	{
		return undef;
	}
	return  $array[$offset];
}

sub set_nth_item($$@)
{
	my ($item, $offset ,@tmp)=@_;
	if($offset >  $#array)
	{
		return @tmp;
	}
	$tmp[$offset]=$item;
	return @tmp;

}
sub get_one_row_last_item(@)
{
	(my @array)=@_;
	return @array[$#array];
}
