use  WWW::Bing::Search;

    my $bing = WWW::Bing::Search->New;
        $bing->Search('linux');
        while ( my $result = $bing->GetResult ) {
            print $result."\n";
        }
