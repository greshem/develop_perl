#!/usr/bin/perl 
#2010_08_08_20:32:45 add by qzj
#��¼ÿ�εĲ�ѯ�ĵ��ʣ����ӵ���˼��
require LWP::UserAgent;

use Encode qw(from_to);
use URI::Escape;
$tmp=shift or die("Usage: $0 word ");
google_write_word($tmp);

#20100322 ע���� encode ��ʱ�� ��Ϊû�����ú������ UTF8λ�Ĺ�ϵ�� ���ǲ��ܵõ���ȷ�Ľ���� ��֪��Ϊʲô�� ��FROM_TO��OK�ˡ� 
#$word=encode("utf-8", $tmp);
#$word=encode("big5", $tmp);
#$word=encode("utf8", $tmp);
#$word=encode("gb2312", $tmp);
$word=$tmp;
from_to($word, "gb2312", "utf8");
$url=uri_escape($word);

my $ua = LWP::UserAgent->new;
$ua->timeout(10);
$ua->env_proxy;

print  $tmp,"->", $url,"\n";
print 'http://www.google.com/uds/Gtranslate?callback=google.language.callbacks.id101&context=4&q='.$url.'&langpair=zh%7Cen&key=notsupplied&v=1.0'."\n";;

my $response = $ua->get('http://www.google.com/uds/Gtranslate?callback=google.language.callbacks.id101&context=4&q='.$url.'&langpair=zh%7Cen&key=notsupplied&v=1.0');

if ($response->is_success) 
{
	#print $response->decoded_content;  # or whatever
	print $response->content;  # or whatever
	print "\n";
}
else 
{
	die $response->status_line;
}

sub google_write_word($)
{
	($word)=@_;
	open(FILE, ">>/root/develop_txt/google_word.txt");
	print FILE $word."\n";
	close(FILE);
	
}
