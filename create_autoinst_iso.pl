#!/usr/bin/perl
my $input_iso= shift;
if(!defined($input_iso))
{
	Usage();
	$input_iso="Fedora--8-i386.iso"
}
mount_iso($input_iso);

my $os_name=get_ostype_name("P:\\.discinfo");
print  $os_name."\n";

copy_isolinux_image($os_name);
create_mkisofs_batch_file($os_name);


########################################################################
sub create_mkisofs_batch_file($)
{
	(my $os_name)=@_;
	open(FILE, ">d:\\vmware_app_autoinst\\$os_name\\mkisofs_.bat") or die("create mksisfs_bat error , $!\n");;
	
	print FILE  <<EOF
	echo mkisofs -r -N -L -d -J -T -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot  -V "$os_name" -boot-load-size 4 -boot-info-table  -o d:\\vmware_app_autoinst\\${os_name}.iso d:\\vmware_app_autoinst\\$os_name 
	mkisofs -r -N -L -d -J -T -b isolinux/isolinux.bin   -no-emul-boot  -V "$os_name" -boot-load-size 4 -boot-info-table  -o d:\\vmware_app_autoinst\\${os_name}.iso d:\\vmware_app_autoinst\\$os_name 
EOF
;
	close(FILE);	
	system("d:\\vmware_app_autoinst\\$os_name\\mkisofs_.bat");
}
#拷贝  autoinst 光盘,  最基本的两个目录:  isolinux   images 
sub copy_isolinux_image($)
{
	(my $os_name)=@_;
	if(! -d "d:\\vmware_app_autoinst")
	{
		mkdir("d:\\vmware_app_autoinst");
	}

	my $autoinst_iso_dir="d:\\vmware_app_autoinst\\$os_name";
	if(! -d  $autoinst_iso_dir)
	{
		mkdir("$autoinst_iso_dir");
	}

	print ("xcopy /y /S P:\\images  $autoinst_iso_dir\\images\\ ");
	system("xcopy /y /S P:\\images  $autoinst_iso_dir\\images\\ ");

	print("xcopy /y /S P:\\isolinux  $autoinst_iso_dir\\isolinux\\ ");
	system("xcopy /y /S P:\\isolinux  $autoinst_iso_dir\\isolinux\\  ");
}

sub get_ostype_name($)
{
	(my $input_file)=@_;
	my @array= file_get_contents_array($input_file);
	#print join("\n", @array);
	my $ret=$array[1]."_".$array[2];
	$ret=~s/\s+/_/g;
	$ret=~s/\"/_/g;
	$ret=~s/_$//g;
	$ret=~s/^_//g;
	$ret=~s/__/_/g;
	$ret=~s/__/_/g;
	return $ret;
}

#来自于 develop_perl/file_get_contents.pl 
sub file_get_contents_array($)
{
	(my $filename)=@_;
	open(FILE, $filename);
	my @string=(<FILE>);
	close(FILE);
	return  @string ;
}
sub Usage()
{
	print "$0   redhat_fedora.iso \n";
	warn("\n");
}

#来自于 c:\\bin\\iso_copy_out_to_desktop.pl , 这里没有修改过. 
sub mount_iso($)
{
	(my $isoname)=@_;
	if( ! -f $isoname)
	{
		print $isoname."文件不存在\n";
		return ;
	}
	if($^O=~/win/i)
	{
		print "iso的windows路径是:  $isoname \n";
		system("batchmnt64.exe /unmountall  ");
		print("\nbatchmnt64.exe $isoname   p\n");
		system("batchmnt64.exe $isoname    p");
		print "sleep 2秒 等待 光盘镜像初始化\n";
		sleep(2);

		if( ! -d "p:\\")
		{
				warn("PANIC: P 盘错误: why?\n");
		}
	}
	else
	{
		if(! -d  "/mnt/iso_mount_dir/")
		{
			mkdir("/mnt/iso_mount_dir/");
		}

		system("mount -t iso9660 $isoname /mnt/iso_mount_dir/  -o loop ");
	}

}
