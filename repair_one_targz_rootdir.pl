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
#这里集中处理tar.gz  的文件。 
for (grep {/tar.gz$/} @ARGV)
{
	#print "Deal with ", $_,"\n";
	#DEBUG("处理 $_ 文件\n");
	$chm=$_;
	$chm=~s/tar\.gz$/chm/i;
	if(-f $chm)
	{
		print $chm, "exist, next\n";
		next;
	}
	if(! -f $_)
	{
		#DEBUG("$_ 文件 不存在,注意\n");
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
	#./aaa/这样的类型的目录
	elsif($_=~/^\.\//)
	{
		($first_dir,$other_dir)=($_=~/\.\/(.*?)\/(.*).tar.gz/);
	}
	#aaa/这样的目录
	{
		($first_dir, $other_dir)=($_=~/(.*?)\/(.*).tar.gz/);
	}
	
	$html_dir=$first_dir."_html/".$other_dir;
	#只有当前目录， 
	if(scalar(@tmp) == 1  && ($tmp[0] eq $filename))
	{
		print "$_ 目录一个且相同\n";
		#DEBUG "$_ 目录树 只有一个且和文件名相同\n";
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
		print "$_ 目录树一个 但是和文件名不相同\n";
		#DEBUG "$_ 目录树一个 但是和文件名不相同\n";
		$todir=dirname($dir);
		$extractdir=dirname($dir)."/".$tmp[0];
		pathmk($todir) or die("create dir  $todir error\n");

		print("tar -xzf $_ -C $todir\n");
	
		system("tar -xzf $_ -C $todir");
		if($?>>8 ne 0)
		{
			#DEBUG("tar -xzf $_ -C $todir 命令出错");
		}
		dirmove($extractdir, $dir);

		print ("cd $todir && tar -czf $_ $filename\n");
		system("cd $todir && tar -czf $_ $filename");
		if($?>>8 ne 0)
		{
			#DEBUG("cd $todir && tar -czf $_ $filename");
		}
		
		print 	"清空目录", $todir."/".$filename,"\n";
		pathempty($todir."/".$filename);
		pathrm($todir."/".$filename);
	}
	elsif (scalar(@tmp) >1)
	{
		#DEBUG " $_ 里面目录树有多个\n";
		#DEBUG " $_ 里面目录树有多个\n";
		$todir=dirname($dir);
		pathmk($dir) or die("create dir  $todir error\n");
		print ("tar -xzf $_ -C $dir");
		print "\n";
		system("tar -xzf $_ -C $dir");
		if($?>>8 ne 0)
		{
			#DEBUG("tar -xzf $_ -C $dir 命令出错\n");
			print ("tar -xzf $_ -C $dir 命令出错\n");
		}
		
		if( ! -d $todir)
		{
			#DEBUG(" $todir 目录不存在\n");
			print(" $todir 目录不存在\n");
		}
		print("cd $todir && tar -czf $_ $filename");
		system("cd $todir && tar -czf $_ $filename\n");
		if($?>>8 ne 0)
		{
			#DEBUG("cd $todir && tar -czf $_ $filename 命令出错\n");
			print("cd $todir && tar -czf $_ $filename 命令出错\n");
		}
		
		
		print "清空目录", $todir."/".$filename,"\n";
		pathempty($todir."/".$filename);
		pathrm($todir."/".$filename);
	}
	#$b=<STDIN>;

	else
	{
		print "$_  $zip 没有任何文件 \n";
		#DEBUG "$_  $zip 里面 没有任何文件 \n";
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


