#!/usr/bin/perl  

#2010_08_23_10:57:56 add by qzj
#php_cata ��Ѱ�Һõ�phpҳ�沼�ֵĳ��� ����PHP����ҳ�ļ��ܴ���㹻��Ϊ�� ҳ�湻���ˡ� 
require LWP::UserAgent;

        my $ua = LWP::UserAgent->new;
        $ua->timeout(10);
        $ua->env_proxy;

	open(FILE,"7_depth_find.list") or die("Open file error\n");
	for(<FILE>)
	{
		open(OUTPUT_URL, ">>goog_url") or die("open file error\n");
		chomp;
        my $response = $ua->get($_);

        if ($response->is_success) {
			open(OUTPUT, ">index.html");
			print  OUTPUT $response->decoded_content;
			$tmp= $response->decoded_content;
			$size= (-s "index.html");
			if($size > 4096  && $tmp!~/Index of/)
			{
				print OUTPUT_URL $_,"\n";
				close(OUTPUT_URL);
					
			}
            #$a= scalar($response->decoded_content);  # or whatever
			#print $a,"\n";
        }
        else {
            warn "$_";#, $response->status_line;
        }
	}


