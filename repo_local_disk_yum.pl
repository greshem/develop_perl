#!/usr/bin/perl
#2011_03_03_14:10:40   ÐÇÆÚËÄ   add by greshem
use File::Basename;

$dir=shift or die("Usage: inputdir \n");
if($dir !~ /^\//)
{
	die("$dir is not absulute path\n");
}
if ( ! -d $dir."./repodata")
{
	die(" $dir is not repo \n");
}

$reponame=basename($dir);

open(FILE, ">".$reponame.".repo") or die("open file error $!\n");
print  FILE <<EOF
[$reponame]
name=local_repo
baseurl=file://$dir
enabled=1
#gpgcheck=1
#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5
EOF
;

if ( -f $reponame.".repo" )
{
	print  $reponame.".repo  file create\n";
}

