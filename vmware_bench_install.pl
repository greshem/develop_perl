#!/usr/bin/perl

sub get_auto_installing_count()
{
	my $count=0;
	open(PIPE, "vmrun list |") or die("open vmrun list error\n");
	for(<PIPE>)
	{
		if($_=~/auto_inst/)
		{
			$count++;
		}
	}
	return $count;
}

print get_auto_installing_count();

#==========================================================================
#mainloop
use Cwd;
use File::Basename;

our $g_pwd=getcwd();
our $g_basename=basename($g_pwd);
our $g_dirname=dirname($g_pwd);

our $g_cur=undef;
my @all_dirs= (grep {-d}(glob("$g_pwd/*")));
#install_all_os(@all_dirs);
for_each_create_images(@all_dirs);

sub for_each_create_images(@)
{
	(my @all_dirs)=@_;
	for(@all_dirs)
	{
		chdir($_);
		#system(" start *.bat");
		do_batch_one($_);
	}
}

sub install_all_os(@)
{
	(my @all_dirs)=@_;

	while(1)
	{
		sleep(10);
		if(get_auto_installing_count() !=1)
		{
			my $new_one=shift(@all_dirs);
			do_batch_one($new_one);
			$g_cur=$new_one;
		}
		else
		{
			print "��ǰ��װ��Ϊ 1 , ���������µİ�װ \n";
			chek_soft_rebooted($g_cur);
		}
	}
}
#��vmware  ��־ ��ѯ�Ƿ� ��������, �������� ��ô ��˵����װ�����, ��Ҫ�ػ�. 
sub chek_soft_rebooted($)
{
	(my $dir)=@_;
	if(match_reset_soft($dir))
	{
		print "$dir �Ѿ�����������, ���̰�װ��� ��Ҫ�ػ�\n";
		my @a=grep {-f} glob("$dir/*.vmx");
		my $vmx=$a[0];
		print(" vmrun -T ws    stop  $vmx");
		system(" vmrun -T ws    stop  $vmx");
	}
	else
	{
		print "$dir û����������, ����Ҫ�ػ�\n";
	}
}

sub match_reset_soft($)
{
	(my $dir)=@_;
	open(LOG, $dir."/vmware.log") or die("open $dir/vmware.log error \n");
	for(<LOG>)
	{
		if($_=~/CPU reset: soft/)
		{
			close(LOG);
			return 1;
		}
	}
	close(LOG);
	return undef;
}
sub do_batch_one($)
{
	(my $each)=@_;
	print $each."\n";
	chdir($each);
	my @a=grep {-f} glob("*.bat");
	print "system".$a[0]."\n";
	system("$a[0]");

	#if( get_auto_installing_count() != 2)
	#{
		#print( $g_pwd."/".$each."\n");
		#chdir( $g_pwd."/".$each);
	#}
}
