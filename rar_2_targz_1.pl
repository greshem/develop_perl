#!/usr/bin/perl 

#2010_09_22_15:15:20 add by greshem
#2010_10_14_00:32:40 add by greshem
# ���й�
use get_root_dir_all_arch_type;
use File::Basename;
use File::Copy::Recursive qw(pathmk dirmove pathrm pathempty );

$in_path=$ARGV[0] or die("Error: should input a file \n");
die("Eoor: $in_path is not a file\n") if(! -f $in_path);
die("Error: file should be a absoult Path \n") if($in_path!~/^\//);

#$in=lc($in);
$absoult_path=dirname($in_path);
$in_file=basename($in_path);
die "Error: input rar file \n"  if ($in_file !~/rar$|Rar$|RAR$/);

($name)=($in_file=~/(.*)\.rar/);

@root_dirs=get_root_dir($in_path);
print @root_dirs;
#������һ��Ŀ¼, ����Ŀ¼�� �ļ���һ���� 
if((scalar(@root_dirs) eq 1) && ($name eq $root_dirs[0] ))
{
	print "all_ok\n";
	if(-d $absoult_path."/".$name)
	{
	# rar e  file.rar output_dir	
	`rar e $in_path  $absoult_path`;	
	}
	else
	{
		mkdir ( $absoult_path."/".$name);
	`unzip  $in_path -d $absoult_path`;	
	`rar e $in_path  $absoult_path  `;	
	}
	`cd $absoult_path && tar -czf $name.tar.gz $name`;
	#unlink($absoult_path."/".$name);
	rmdir($absoult_path."/".$name);
	pathempty($absoult_path."/".$name);
	pathrm($absoult_path."/".$name);
	#`unzip $in `;
	#`tar -czf $root_dirs[0].tar.gz $root_dirs[0]`;	
	print " $absoult_path/$name.tar.gz created \n";
}

#������һ��Ŀ¼, ����Ŀ¼�� �ļ���һ��
elsif ((scalar(@root_dirs) eq 1 ) && (! ($name eq  $root_dirs[0])))
{
	#print " Error: should modify it's root_dir\n";
	mkdir($absoult_path."/".$name);
	`cd $absoult_path && rar e $in_path  `;	
	`cd $absoult_path && mv $root_dirs[0] $name`;
	`cd $absoult_path && tar -czf $name.tar.gz $name`;
	rmdir($absoult_path."/".$name) or ("print rmdir error\n");
	pathempty($absoult_path."/".$name);
	pathrm($absoult_path."/".$name);
	print " $absoult_path/$name.tar.gz created \n";
}
#����û�л��кö�Ŀ¼�� ��Ҫ �����µ�Ŀ¼�ˡ� 
elsif (scalar(@root_dirs) gt 1)
{
	
	mkdir($absoult_path."/".$name);
	`cd $absoult_path && rar e $in_path   $name`;	
	`cd $absoult_path && tar -czf $name.tar.gz $name`;
	rmdir($absoult_path."/".$name) or ("print rmdir error\n");
	pathempty($absoult_path."/".$name);
	pathrm($absoult_path."/".$name);
	print " $absoult_path/$name.tar.gz created \n";
}
else
{
	print "dir empty ; may be rar\n";
	mkdir($absoult_path."/".$name);
	`cd $absoult_path && unrar  x -y $in_path   $name`;	
	`cd $absoult_path && tar -czf $name.tar.gz $name`;
	rmdir($absoult_path."/".$name) or ("print rmdir error\n");
	pathempty($absoult_path."/".$name);
	pathrm($absoult_path."/".$name);
	print " $absoult_path/$name.tar.gz created \n";

}
