#!/usr/bin/perl 
# ���﷢�� , �����ύ��ʱ�� �����޸� ���� svn mv  Ȼ������  �ڹ�Ŀͻ���, ����diff ��ʱ�� �ᵼ�� �ļ���ȡ����. 
# ���Ա���һЩ ��rename mv  , mdf �ֿ��ύ �������ӱ���һ��. 

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

