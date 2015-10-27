#!/usr/bin/perl	   
use HTML::LinkExtractor;

#2011_03_15_16:05:50   星期二   add by greshem
#进一步可以参考. file_get_contents.pl

#   use LWP qw( get ); #	    
use LWP::Simple qw( get );
use URI::URL;
use Encode;# qw(from_to encode decode );
our $base;
my $url = $ARGV[0] or die(" please input a url\n");
if( ! -f $url)
{
	my $html = get($url);
}
else
{
	$base=$ARGV[1] or die( "Usage: $0 file url_where_file from");
	open(FILE, $url);
		
	#2010_10_14_18:35:47 add by greshem qzj
	# 可以测试一下这两者的区别。 
	#$/="";
	$/=undef;
	$html=(<FILE>);
	close(FILE);
	
	open(SELF, ">>".$0) or die("open self error\n");
	print SELF "#".$base."\n";
	close(SELF);
}
#$base_uri=new URI::URL("http://www.baidu.com/");
my $LX = new HTML::LinkExtractor();
$LX->parse(\$html);


for my $Link( @{ $LX->links } ) 
{
	## new modules are linked  by /author/NAME/Dist
	   if( $href=$$Link{href} ) {
	#   print $$Link{_TEXT}."\n";
	#	print $href,"\n";
		$url=new URI::URL($href);
		$full=$url->abs($base);
		print $full->as_string,"\n";
	}	
	else
	{ 
#		$url=$Link->{href};
		
	}
}

###################
#http://www.baidu.com
#http://www.un27.com
#http://www.baidu.com
#http://www.sohu.com
#http://img60.icioq.com/200911/
#http://img60.icioq.com/200911/
#http://img60.icioq.com/200911/
#http://img60.icioq.com/200911/
#http://img60.icioq.com/200911/
#http://img60.icioq.com/200910
#http://img60.icioq.com/200910
#http://img60.icioq.com/200910
#http://img60.icioq.com/200909
#http://img60.icioq.com/200909
#http://img60.icioq.com/200909
#http://www.baidu.com
#http://www.baidu.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.fxfcw.com
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kkfc.com.cn
#http://www.kernel.org/pub/linux/kernel/v2.6/
#http://www.kernel.org/pub/linux/kernel/v2.6/
#http://www.kernel.org/pub/linux/kernel/v2.6/
#http://www.kernel.org/pub/linux/kernel/v2.6/
#http://www16.zzu.edu.cn/qtss/zzjpoem1.dll/query
#http://www.kde.org/applications/education/
#http://www.kde.org/applications/education/
#http://www.baidu.com
#http://www.baidu.com
#http://www.rarlab.com/
#download.htm
#download.htm
#bbb
#http://www.rarlab.com
#http://www.rarlab.com
