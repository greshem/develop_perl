#!/usr/bin/perl
#2011_01_27_18:08:46 add by greshem


# /****************************************************************************
# * Description: ������������ڣ� �����ļ����� �����Ѿ������ˣ� �����һ�� seq. 
# * @param 	:
# *				�������� ǰ׺ �ͺ�׺
# *						f("bake", "zip" ), ����������� bake2011_03_33.zip �������Ƶ��ļ���. 
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
# * Description: �� touch����һ����, 
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
# * Description: �ļ����� ����. 
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
