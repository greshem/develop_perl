#!/usr/bin/perl

#2011_02_28_23:23:36 ÐÇÆÚÒ»  add by greshem

#chdir("/var/cache/yum/fedora");
#pkgKey[0] ,  pkgId[1] ,  name[2] ,  arch[3] ,  version[4] ,  epoch[5],  release[6] ,  summary[7] ,  
#description[8] ,  url[9]  ,  time_file[10]  ,  time_build[11]  ,  rpm_license[12]  ,  rpm_vendor[13]  ,  rpm_group[14]  ,  rpm_buildhost[15]  ,  
#rpm_sourcerpm[16]  ,  rpm_header_start[17]  ,  rpm_header_end[18]  ,  rpm_packager[19]  ,  size_package[20]  ,  size_installed[21]  ,  size_archive[22]  ,  location_href[23]  ,  
##location_base[24]  ,  checksum_type[25]  );


use DBI;
$yum_sqlite="/var/cache/yum/fedora/primary.sqlite";

if ( ! -f $yum_sqlite)
{
	die(" yum_sqlite not exists , not support this system , only in fedora 8 \n");
}
use Encode qw(from_to);
my $dbh = DBI->connect("dbi:SQLite:dbname=$yum_sqlite","","");
my $s_q =$dbh->prepare("select * from  packages");
$s_q->execute();
while( my @data=$s_q->fetchrow_array())
{
		#from_to($data[0], "utf8","gb2312");
		#print $data[0],"|", $data[1],"|", $data[2],"|", $data[3],"|",$data[4], "|", $data[5], "|", $data[6],"|", $data[7],"|", $data[8], "|", $data[9], "|", $data[10],"\n";
		#$summary
		$name=$data[2];
		$summary=$data[7];
		$description=$data[8];
		print "Name:\t",$name;
		print "\n";
		print "Summary:\t", $summary;
		print "\n";
		print "Description:\n",$description;
		print "\n";
		print "#####################################################################\n";
}
