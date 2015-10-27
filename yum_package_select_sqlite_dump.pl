#!/usr/bin/perl
#/var/cache/yum/x86_64/16/

#chdir("/var/cache/yum/fedora"); #f8 
#pkgKey[0]			pkgId[1] ,  		name[2] ,  			arch[3] ,  			version[4] ,  		epoch[5],  			release[6] ,  
#summary[7] ,  		description[8] ,  	url[9]  ,  			time_file[10]  ,  	time_build[11]  ,  	rpm_license[12]  	rpm_vendor[13]  ,  
#rpm_group[14]  ,  	rpm_buildhost[15]  	rpm_sourcerpm[16]  	rpm_header_start[17]rpm_header_end[18]  rpm_packager[19]  	size_package[20]  ,  
#size_installed[21] size_archive[22]  ,  location_href[23]  location_base[24]   checksum_type[25]  	


use DBI;
use Encode qw(from_to);

my $sqlite_file;
for $sqlite_file (  get_primary_sqlite())
{
	print  "#======================================================== \n";
	print  "Seach  $sqlite_file   with  $pattern \n";
	search_in_primary_sqlite($sqlite_file);
}


#==========================================================================
sub search_in_primary_sqlite($)
{
	(my $yum_sqlite,my $pattern)=@_;
	my $dbh = DBI->connect("dbi:SQLite:dbname=$yum_sqlite","","");

	my $s_q =$dbh->prepare("select name,summary,description,arch,version,release, size_package, size_installed, rpm_sourcerpm  from  packages ");

	$s_q->execute();

	while( my @data=$s_q->fetchrow_array())
	{
		#dump_rpm_size_info($pattern, @data);
		#get_rpm_elf_scripts_package(@data);
		print_name(@data);

	}
}

sub print_name(@)
{
	(my @data)=@_;

	my $name=$data[0];
	print $data[0]."\n";

}
#==========================================================================
sub get_rpm_elf_scripts_package(@)
{
	(my @data)=@_;

	my $name=$data[0];
	my $summary=$data[1];
	my $desc=$data[2];
	my $arch=$data[3];
	my $version=$data[4];
	my $release=$data[5];
	my $size_package=$data[6];
	my $size_installed=$data[7];
	my $rpm_sourcerpm = $data[8];

	open(OUTPUT, ">>3_binary_rpm_package_wget_mirror.sh") or die("create file error 3_binary_rpm_package_wget_mirror.sh \n");

	if($arch=~/noarch/i || $name=~/debuginfo/ || $arch=~/-devel/)
	{
		#print $name."\n";
		#print $name." |$arch \n";
	}
	else
	{
		#print $name." |$arch \n";
		#print $name."   \n";
		print OUTPUT "wget --mirror  http://kojipkgs.fedoraproject.org/packages/$name/$version/$release/$arch/ \n";
	}
	close(OUTPUT);
}
#==========================================================================
sub dump_rpm_size_info(@)
{
	(my @data)=@_;
	my $name, $summary;

	use Term::ANSIColor qw(:constants);
	local $Term::ANSIColor::AUTORESET = 1; #¿¿ ¿¿ ¿45m¿¿.



	my $name=$data[0];
	my $summary=$data[1];
	my $desc=$data[2];
	my $arch=$data[3];
	my $version=$data[4];
	my $release=$data[5];
	my $size_package=$data[6];
	my $size_installed=$data[7];
	my $rpm_sourcerpm = $data[8];

	$summary=$data[1];
	#$summary=~s/$pattern2/$bold_pattern/g;
	#print $summary." |  http://kojipkgs.fedoraproject.org/packages/$name/$version/$release/$arch/\n";
	do("/root/develop_perl/human_number_change_K_M_G_T_P.pl");
	
	my $h_size= bytesToX($size_package);

	if($size_package < 1024*1024*30)
	{
		print $name.".$arch : ";
		print  "| ".$h_size."| ".bytesToX($size_installed)." \n";
	}
	else
	{
		#logger("$name. $arch Ì«´ó  ,  $size_package = $h_size \n");
		logger("$name-$version    | BBBBBBBBBBBBBBB|  $rpm_sourcerpm  |,  $size_package = $h_size \n");
		logger("$name-debuginfo-$version    | BBBBBBBBBBBBBBB| $rpm_sourcerpm    |,  $size_package = $h_size \n");
	}
}
#==========================================================================
sub get_primary_sqlite()
{
	my @file= glob("/var/cache/yum/*/*/*/*primary.sqlite");
	if(scalar(@file)==0)
	{
		my @bz2_files= glob("/var/cache/yum/*/*/*/*primary.sqlite.bz2");
		system("bzip2 -d -k  $bz2_files[0] ");
	}

	@file= glob("/var/cache/yum/*/*/*/*primary.sqlite");
	return @file;
}

sub logger($)
{
	(my $input_str)=@_;
	open(LOG, ">>./all.log") or warn("/root/bin/yum_search.pl ´ò¿ªÊ§°Ü\n");
	print LOG  $input_str."\n";
	close(LOG);



}

sub exist_in_DATA($)
{
	(my $pattern)=@_;
	for(<DATA>)
	{
		if($_=~/$pattern/)
		{
			return 1;
		}
	}
	return 0;
}
__DATA__
