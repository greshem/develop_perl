#perl�Դ���������sort��Ĭ�ϵ��ǰ��ַ���ASCII�������÷���

#��value������ֵ��

%out=(
"32"=>"sdb1:",
"17"=>"sdb1",
"10"=>"sdb2",
"1"=>"d_qianlong_all_iso",
"2"=>"oss_site_all_iso",
"3"=>"_x_file_ext",
"4"=>"redhat_old_6_7_8_9",
"6"=>"_xfile",
);


%hash=(
"redhat_6.2"=>"1", "2010_all_iso"=>"1", "sdb4"=>"3", "2012_all_iso"=>"1", "d_frequent"=>"1", "dos_iso"=>"1", "redhat_old_6_7_8_9"=>"4", "redhat_7.0"=>"1", "redhat_9"=>"1", "2009_all_iso"=>"1", "sf_mirror_iso"=>"1", "2011_all_iso"=>"1", "ghost_targz_iso"=>"1", "develop_IDE_ISO"=>"1", "linux_iso_windows"=>"6", "fedora_all"=>"1", "linux_src_all_iso"=>"1", "sdb1"=>"17", "_x_file_ext"=>"3", "d_python_pypi_mirror_iso"=>"1", "sdb3"=>"2", "vmware_disk_iso"=>"1", "all_chm"=>"1", "kugou_mp3_iso"=>"1", "f8_srpm_done"=>"1", "zzu_ebook"=>"1", "f13_srpm_download"=>"1", "zzu_ebook_computer"=>"1", "Security_iso"=>"1", "_xfile"=>"6", "qimeng"=>"1", "sdb2"=>"10", "oss_site_all_iso"=>"2", "redhat_8"=>"1", "d_linux_src_f13"=>"1", "ebook"=>"1", "game"=>"1", "sdb1:"=>"32", "lindows"=>"1", "d_qianlong_all_iso"=>"1",

);

get_max(%hash);
#use Data::Dumper;
#print Data::Dumper->Dump([\%hash]);
#==========================================================================
#��ȡ ��ֵ ���� �Ǹ� ��ֵ, 
sub get_max(%)
{
	(my %hash)=@_;
	my @hash;
	foreach my $key (sort {$hash{$b} <=> $hash{$a}} keys %hash)
	{
		push(@hash, $key);
		print "$key\t$hash{$key}\n";
	}
	$max=$hash[0];
	print "MAX: $hash{$max} \n";
}

__DATA__
#��value�����ַ���
foreach my $key (sort {$hash{$b} cmp $hash{$a}} keys %hash)
{
	push(@hash, $key);
    print "$key\t$hash{$key}\n";
}

 

#��key����

foreach (sort keys %unique_sort)
{ 
	print CHROMOSOME_DISTRIBUTION_UNIQUE $_."/t".$unique_sort{$_}."/n";
}


#��key ����  ��ֵ��
foreach $key  (sort { $a <=> $b} keys %hash)
{
       #print "$key\t$hash{$key}\n";
}
