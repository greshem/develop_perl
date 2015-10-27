#c:\\perl\perl.exe
use POSIX qw(strftime);
use Socket;
$file="task.dat" or die("Usage: $0 task.dat");
open(FILE, $file) or die("open file error\n");
$ret;
$length=length(pack("Z256LLLL"));
while($ret=sysread(FILE, $a, $length))
{
	($filename, $filesize, $offset, $last_time, $ipaddr)=unpack("Z256 L L L L", $a);
	print "filename " , $filename,"\n";
	print "filesize " , $filesize,"\n";
	print "offset   " , $offset  , "\n";
	print "last_time " , strftime("%Y-%m-%d-%H:%M:%S", localtime($last_time)), "\n";
	print "ipaddr   " , long2IpStr($ipaddr), "\n";
}

<STDIN> ;
sub long2IpStr($)
{
	(my $in)=@_;
	#$netInt=pack("N", $in);
	$netInt=pack("I", $in);
	return inet_ntoa($netInt);
}