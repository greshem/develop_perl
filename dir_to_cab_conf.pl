#!/usr/bin/perl

$dir=shift or die("Usage: $0 dir\n");

chdir($dir);
@lines=` find . -type d |grep -v svn`;


print <<EOF
.OPTION EXPLICIT
.Set CabinetNameTemplate=Package.cab
.set DiskDirectoryTemplate=.
.Set CompressionType=MSZIP
.Set MaxCabinetSize=0
.Set MaxDiskFileCount=0
.Set MaxDiskSize=0
.Set UniqueFiles="OFF"
.Set Cabinet=on
.Set DiskDirectory1=$dir
EOF
;

foreach $dir_tmp  (@lines)
{

	chomp($dir_tmp);
	#print "##".$dir_tmp."\n";
	if($dir_tmp eq ".")
	{
		$dir_tmp=undef;
	}
	#$dir_tmp=~s/^\.//;
	print ".Set DestinationDir=\"$dir_tmp\"\n";
	#print  "GLOB ". $dir."/".$dir_tmp."/*\n";

	#@tmp= grep { -f $dir."/".$_} glob($dir."/".$dir_tmp."/*");
	@tmp=  glob($dir."/".$dir_tmp."/*");
	foreach $file (@tmp)
	{
		print "\"".$file."\"\n";
	}

	
}

