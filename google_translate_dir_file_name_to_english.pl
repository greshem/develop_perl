#!/usr/bin/perl 
#记录每次的查询的单词，句子的意思。
#20100322 注意用 encode 的时候， 因为没有设置好里面的 UTF8位的关系， 老是不能得到正确的结果。 不知道为什么。 用FROM_TO就OK了
#2010_08_27_15:39:46 add by greshem, 两个程序集成到了一起，en2zh  zh2en,  


require LWP::UserAgent;
use Encode qw(from_to encode decode );
use URI::Escape;
#$tmp=shift or die("Usage: $0 word \n");


@file=glob("*");
if(scalar(@file)==0)
{
	die("cur dir have not files\n");
}
@array=@file;

for(@array)
{
	#汉字行
	if( /.*([\x80-\xff]+).*/  )
	{
		#print $_,"\n";	
		translateChinesWord($_);

	}
	else
	{
		#print $_;
	}
}


###############################################################################
#中文英文互译。 
sub translateChinesWord()
{
	(my $tmp)=@_;
	google_write_word($tmp);

	my $word;
	my $content;

	###############################################################################
	if(IsHanzhi($tmp))
	{
		$word=$tmp;
		from_to($word, "gb2312", "utf8");
		$url=uri_escape($word);
		$from_lang="zh";
		$to_lang="en";
	}
	else
	{
		$word=$tmp;
		$url=uri_escape($word);
		$from_lang="en";
		$to_lang="zh";

	}

	my $ua = LWP::UserAgent->new;
	$ua->timeout(10);
	$ua->env_proxy;

	#print  $tmp,"->", $url,"\n";
	$last_url='http://www.google.com/uds/Gtranslate?callback=google.language.callbacks.id101&context=4&q='.$url.'&langpair='.$from_lang.'%7C'.$to_lang.'&key=notsupplied&v=1.0'."\n";;
	print STDERR $last_url;

	my $response = $ua->get($last_url);
	if ($response->is_success) 
	{
		if($from_lang=~"/zh/")
		{
			$content= $response->content;  # or whatever
			print  STDERR $content;
		}
		#返回的串是中文的， 是UTF8编码， 需要转换。
		else
		{
			$content=	$response->content;
			from_to($content, "utf-8", "gb2312");
			print STDERR  $content;
		}
	}
	else 
	{
		die $response->status_line;
	}

	################################################################################
	#最后返回的是 下面结构的字符串。
	#google.language.callbacks.id101('4',{"translatedText":"China"}, 200, null, 200)
	(undef, $out_en)=($content=~/.*(\".*?\").*\"(.*?)\".*/);

	$out_en=~s/__/_/g;
	$out_en=~s/\.\s+/./g;
	$out_en=~s/ /_/g;
	if( -f $out_en ||| -d $out_en)
	{
	}
	else
	{
		print "mv ", $_ , "  ", $out_en,"\n";
	}
}
#google_write_word($en);

###############################################################################
#print $response->decoded_content;  # or whatever
###############################################################################
#写到文件里面
sub google_write_word($)
{
	($word)=@_;
	# open(FILE, ">>/root/develop_txt/google_word.txt");
	# print FILE $word."\n";
	# close(FILE);
	
}
###############################################################################
#有汉字字符吗?
sub IsHanzhi($)
{
	(my $in)=@_;
	if( $in=~/.*([\x80-\xff]+).*/  )
	{
		return 1;	
	}
	else
	{
		return  0;
	}
}

