#!/usr/bin/perl 
#
require LWP::UserAgent;

use Encode qw(from_to);
use URI::Escape;
		$file=shift or die("Usage: $0 file ");
		#20100322 注意用 encode 的时候， 因为没有设置好里面的 UTF8位的关系， 老是不能得到正确的结果。 不知道为什么。 用FROM_TO就OK了。 
		#$word=encode("utf-8", $tmp);
		#$word=encode("big5", $tmp);
		#$word=encode("utf8", $tmp);
		#$word=encode("gb2312", $tmp);

open(FILE, $file) or die("open file error\n");
for(<FILE>)
{
		chomp;
		$word=$_;
		from_to($word, "gb2312", "utf8");
		$url=uri_escape($word);

        my $ua = LWP::UserAgent->new;
        $ua->timeout(10);
        $ua->env_proxy;

#		print  $tmp,"->", $url,"\n";
#		print 'http://www.google.com/uds/Gtranslate?callback=google.language.callbacks.id101&context=4&q='.$url.'&langpair=zh%7Cen&key=notsupplied&v=1.0'."\n";;

        my $response = $ua->get('http://www.google.com/uds/Gtranslate?callback=google.language.callbacks.id101&context=4&q='.$url.'&langpair=zh%7Cen&key=notsupplied&v=1.0');

        if ($response->is_success) {
            #print $response->decoded_content;  # or whatever
            #print $response->content;  # or whatever
			#print "\n";
			$tmp= $response->content;
			(undef, $en)=($tmp=~/.*(\".*?\").*\"(.*?)\".*/);
			#$en=~s/\ /_/g; 
			$en=~s/__/_/g;
			$en=~s/\ //g;
			print  $_ , "  ", $en,"\n";
        }
        else {
            die $response->status_line;
        }
}

