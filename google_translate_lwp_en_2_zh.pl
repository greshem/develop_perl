#!/usr/bin/perl 
#
#2010_08_08_20:36:53 add by qzj
#记录每次的查询的单词，句子的意思。
use Encode qw(from_to encode decode );
 use URI::Escape;

require LWP::UserAgent;

$words=shift or die("Usage $0 word");

google_write_word($words);

$words=uri_unescape($words);
        my $ua = LWP::UserAgent->new;
        $ua->timeout(10);
        $ua->env_proxy;
print 'http://www.google.com/uds/Gtranslate?callback=google.language.callbacks.id101&context=22&q='.$words.'&langpair=en%7Czh&key=notsupplied&v=1.0';

my $response = $ua->get('http://www.google.com/uds/Gtranslate?callback=google.language.callbacks.id101&context=22&q='.$words.'&langpair=en%7Czh&key=notsupplied&v=1.0');

        if ($response->is_success) 
		{
			#$a=$response->decoded_content;
			$a=$response->content;
            from_to($a, "utf-8", "gb2312");  # or whatever
			print $a,"\n";
			#print encode("gb2312", decode("utf-8", $response->decoded_content));
			
        }
        else {
            die $response->status_line;
        }


sub google_write_word($)
{
	($word)=@_;
	open(FILE, ">>/root/google_word.txt");
	print FILE $word."\n";
	close(FILE);
	
}
