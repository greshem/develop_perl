#!/usr/bin/perl 
#��¼ÿ�εĲ�ѯ�ĵ��ʣ����ӵ���˼��
require LWP::UserAgent;
use Encode qw(from_to encode decode );
use URI::Escape;
$tmp=shift or die("Usage: $0 word \n");
google_write_word($tmp);

#20100322 ע���� encode ��ʱ�� ��Ϊû�����ú������ UTF8λ�Ĺ�ϵ�� ���ǲ��ܵõ���ȷ�Ľ���� ��֪��Ϊʲô�� ��FROM_TO��OK�ˡ� 
#2010_08_27_15:39:46 add by greshem, �������򼯳ɵ���һ��en2zh  zh2en,  

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
print $last_url;

my $response = $ua->get($last_url);
if ($response->is_success) 
{
	if($from_lang=~"/zh/")
	{
		$content= $response->content;  # or whatever
		print $content;
	}
	#���صĴ������ĵģ� ��UTF8���룬 ��Ҫת����
	else
	{
		$content=	$response->content;
		from_to($content, "utf-8", "gb2312");
		print $content;
	}
	print "\n";
}
else 
{
	die $response->status_line;
}

################################################################################
#��󷵻ص��� ����ṹ���ַ�����
#google.language.callbacks.id101('4',{"translatedText":"China"}, 200, null, 200)
(undef, $en)=($content=~/.*(\".*?\").*\"(.*?)\".*/);

$en=~s/__/_/g;
print  $_ , "  ", $en,"\n";
google_write_word($en);

###############################################################################
#print $response->decoded_content;  # or whatever
###############################################################################
#д���ļ�����
sub google_write_word($)
{
	($word)=@_;
	open(FILE, ">>/root/develop_txt/google_word.txt");
	print FILE $word."\n";
	close(FILE);
	
}
###############################################################################
#�к����ַ���?
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

