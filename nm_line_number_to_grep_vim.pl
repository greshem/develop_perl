#!/usr/bin/perl 
# 这里发现 , 假如提交的时候 又是修改 又是 svn mv  然后导致了  乌龟的客户端, 进行diff 的时候 会导致 文件获取不到. 
# 所以保险一些 把rename mv  , mdf 分开提交 这样更加保险一下. 

open(FILE, "nm -l /usr/share/diskplat/diskplat |grep ' B ' | ") or die(" nm  line number error \n");

for(<FILE>)
{
	my @array = split(/\s+/, $_);
	#print join("\t", @array);

	my $path= $array[3];
	
	if($path=~/diskplat/)
	{
		#print $path."\n";	
		(my $file_name, my $line_num)=($path=~/(.*):(.*)/);
		print "sed -ne '$2p' $1\n";
		print "vim $1 +$2 \n";
	}
}

