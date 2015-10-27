#!/usr/bin/perl
#2011_01_27_18:08:46 add by greshem


# /****************************************************************************
# * Description: 根据明天的日期， 生成文件名， 假如已经存在了， 再添加一个 seq. 
# * @param 	:
# *				两个函数 前缀 和后缀
# *						f("bake", "zip" ), 会产生类似于 bake2011_03_33.zip 这样类似的文件名. 
# * @return 	
# * **************************************************************************/
sub gen_file_name_with_time($$)
{
	use POSIX 'strftime';
	(my $prefix, $suffix)=@_;
	$cur_time=POSIX::strftime('%Y_%m_%d',localtime(time()));
	#print "nowTime -> ", $cur_time,"\n";
	for($i=0;;$i++)
	{
		$filename=$prefix."_".$cur_time."_".$i."_.".$suffix;
		if( ! -f  $filename )
		{
			return $filename
		}
		
	}

} 

# /****************************************************************************
# * Description: 和 touch命令一样的, 
# * @param 	
# * @return 	
# * **************************************************************************/
sub touch_file($)
{
	(my $name)=@_;
	open(FILE, ">> ".$name) or die("create file error\n");
	print FILE $name."\n";
	close(FILE);	
}

# /****************************************************************************
# * Description: 文件存在 断言. 
# * @param 	
# * @return 	
# * **************************************************************************/
sub must_be_exist($)
{
	(my $name)=@_;
	if( ! -f  $name)
	{
		die("$name ASSERT ERROR");
	}
}

########################################################################
#mainloop
for(0..100)
{
	print $_."\n";	
	$name=gen_file_name_with_time("backup","zip");
	touch_file($name);
	must_be_exist($name);

}
