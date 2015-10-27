#!/usr/bin/perl
use HTML::FormatText;
use HTML::Parse;

use Encode qw(from_to);
$html=parse_htmlfile($ARGV[0]);
$formatter=HTML::FormatText->new(leftmargin=>0, rightmargin=>200);
$ascii=$formatter->format($html);
#print $ascii;
@lines=split(/\n/, $ascii);
our $inBlock=0;
our @block;
open(OUTPUT, ">/tmp/wearth_fetion");
for (@lines)
{
	if(/^\s*$/)
	{
		#碰到空行， 假如在文本块内， 则现在应该出来了, 清空 @block;
		if($inBlock==1)
		{
			$inBlock=0;
			#if(grep(/今天|明天|后天/, @block))
			if(grep(/今天|明天/, @block))
			{
				if(grep(/周/, @block))
				{ $tmp=join(" ",  @block);
				 	$tmp=~s/\[IMAGE\]//g;
				 print $tmp,"\n";
				from_to($tmp, "GB2312", "UTF8");
				 print OUTPUT $tmp,"\n";
				}
			}
			@block=();
		}	
	}
	else
	{
		$inBlock=1;
		push(@block, $_);
	}
	
}

close(OUTPUT);
system("/bin/fetion_sendfile /tmp/wearth_fetion");
