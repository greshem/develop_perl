#!/usr/bin/perl

#2010_12_21_11:23:14 add by greshem
# ע�ⲻҪʹ��ģ�壬 Template , ��Ϊ�� livecd ��ƽ̨�Ͽ��ܾͲ�֧����. 
#20100601, ���lmy���֧�֡� 
#20100713 qzj  ���ԡ� 

use POSIX qw(strftime);
$file=$ARGV[0] or die("$0 filename \n");
if($file!~/\.java$/)
{
	$file.=".java";
}

($name)=($file=~/(.*).java/);

$time=strftime("%Y_%m_%d", localtime(time()));
open(FILE,">".$file) or die("open file error $!\n");
while(<DATA>)
{
	if(/__TEMPLATE__/)
	{
		$_=~s/__TEMPLATE__/$name/g;
		print FILE $_;
	}
	elsif(/__TIME__/)
	{
		$_=~s/__TIME__/$time/g;
		print FILE $_;
	}
	else
	{
		print FILE $_;
	}
}
close(FILE);

print "javac $file\n";
print "java  $name\n";
__DATA__
//########################################################################
//__TIME__ by greshem. 

class __TEMPLATE__{
    public static void main(String args[])
    {
        String s="__TEMPLATE__";
        System.out.println(s);
    }
}


