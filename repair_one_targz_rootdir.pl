#!/usr/bin/perl 
#2010_06_11_12:22:31modify by qzj
use File::Copy::Recursive qw(pathmk dirmove pathrm pathempty );
use File::Basename;
use get_root_dir_all_arch_type;
use getAllFileFromDir;
#use logSimple; 
use POSIX qw(strftime);
sub DEBUG()
{
	print @_;
}
#$today=strftime("%Y%m%d",localtime(time()));
#logInit("log/repair_targz_rootdir_".$today.".log");


#$in=$ARGV[0] or die("Usage: $0 filelist or dir\n");
#my $basename;
#my @files;
#if(-d $in)
#{
#	$basename=basename($in);	
#	@files = grep {/\.tar\.gz$/} getAllFileFromDir($in);
#	@tmp=sort{ (-s $a)<=>(-s $b)} @files;
#	@files=@tmp;
#}
#else
#{
#	open(FILE, $in) or die("open file error\n");
#	@tmp=(<FILE>);
#	@tmp2=map{chomp; $_;} @tmp;
#	@files=grep{/tar.gz$/} @tmp2;
#}
#���Ｏ�д���tar.gz  ���ļ��� 
for (grep {/tar.gz$/} @ARGV)
{
	#print "Deal with ", $_,"\n";
	#DEBUG("���� $_ �ļ�\n");
	$chm=$_;
	$chm=~s/tar\.gz$/chm/i;
	if(-f $chm)
	{
		print $chm, "exist, next\n";
		next;
	}
	if(! -f $_)
	{
		#DEBUG("$_ �ļ� ������,ע��\n");
		next;
	}
	@tmp=get_root_dir($_);
	($dir)=($_=~/(.*).tar.gz/);
	($filename)=($_=~/.*\/(.*).tar.gz/);
	if(! defined $filename)
	{
		$filename=$dir;
	}
	if($_=~/^\//)
	{
		($first_dir,$other_dir)=($_=~/\/(.*?)\/(.*).tar.gz/);
	}
	#./aaa/���������͵�Ŀ¼
	elsif($_=~/^\.\//)
	{
		($first_dir,$other_dir)=($_=~/\.\/(.*?)\/(.*).tar.gz/);
	}
	#aaa/������Ŀ¼
	{
		($first_dir, $other_dir)=($_=~/(.*?)\/(.*).tar.gz/);
	}
	
	$html_dir=$first_dir."_html/".$other_dir;
	#ֻ�е�ǰĿ¼�� 
	if(scalar(@tmp) == 1  && ($tmp[0] eq $filename))
	{
		print "$_ Ŀ¼һ������ͬ\n";
		#DEBUG "$_ Ŀ¼�� ֻ��һ���Һ��ļ�����ͬ\n";
		print " Nothing todo\n";
		$todir=dirname($dir);
		#print "=====1111\t", $tmp[0],"\n";
		#tar -xzvf $_ -C $dir	
		
		#pathmk($todir) or die("create dir  $todir error\n");
		#'tar -xzf $_ -C $todir';
		#'tar -czf $_ $dir';
		#pathrm($dir);	
	}	
	elsif(scalar(@tmp) == 1 && ( $tmp[0]  ne $filename))
	{
		print "$_ Ŀ¼��һ�� ���Ǻ��ļ�������ͬ\n";
		#DEBUG "$_ Ŀ¼��һ�� ���Ǻ��ļ�������ͬ\n";
		$todir=dirname($dir);
		$extractdir=dirname($dir)."/".$tmp[0];
		pathmk($todir) or die("create dir  $todir error\n");

		print("tar -xzf $_ -C $todir\n");
	
		system("tar -xzf $_ -C $todir");
		if($?>>8 ne 0)
		{
			#DEBUG("tar -xzf $_ -C $todir �������");
		}
		dirmove($extractdir, $dir);

		print ("cd $todir && tar -czf $_ $filename\n");
		system("cd $todir && tar -czf $_ $filename");
		if($?>>8 ne 0)
		{
			#DEBUG("cd $todir && tar -czf $_ $filename");
		}
		
		print 	"���Ŀ¼", $todir."/".$filename,"\n";
		pathempty($todir."/".$filename);
		pathrm($todir."/".$filename);
	}
	elsif (scalar(@tmp) >1)
	{
		#DEBUG " $_ ����Ŀ¼���ж��\n";
		#DEBUG " $_ ����Ŀ¼���ж��\n";
		$todir=dirname($dir);
		pathmk($dir) or die("create dir  $todir error\n");
		print ("tar -xzf $_ -C $dir");
		print "\n";
		system("tar -xzf $_ -C $dir");
		if($?>>8 ne 0)
		{
			#DEBUG("tar -xzf $_ -C $dir �������\n");
			print ("tar -xzf $_ -C $dir �������\n");
		}
		
		if( ! -d $todir)
		{
			#DEBUG(" $todir Ŀ¼������\n");
			print(" $todir Ŀ¼������\n");
		}
		print("cd $todir && tar -czf $_ $filename");
		system("cd $todir && tar -czf $_ $filename\n");
		if($?>>8 ne 0)
		{
			#DEBUG("cd $todir && tar -czf $_ $filename �������\n");
			print("cd $todir && tar -czf $_ $filename �������\n");
		}
		
		
		print "���Ŀ¼", $todir."/".$filename,"\n";
		pathempty($todir."/".$filename);
		pathrm($todir."/".$filename);
	}
	#$b=<STDIN>;

	else
	{
		print "$_  $zip û���κ��ļ� \n";
		#DEBUG "$_  $zip ���� û���κ��ļ� \n";
	}
}
if(-d $in)
{
	#print "find $in -maxdepth 4 -mindepth 4 -type d \|xargs rm -rf \n";
	#print "find $in -maxdepth 4 -mindepth 4 -type d \|xargs rm -rf \n";
}
open(OUTPUT, ">".$basename);
for(@files)
{
	print OUTPUT  $_, "\n";
}


