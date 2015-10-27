#!/usr/bin/perl 

#use strict;
#use warnings;

    use Term::ANSIColor qw(:constants);
    {
        local $Term::ANSIColor::AUTORESET = 1;
        #print BOLD BLUE "This text is in bold blue.\n";
        print BOLD  "This text is in bold blue.\n";
        print "This text is normal.\n";

		$tmp="a  linux b";
		$bold_str=BOLD("linux");	
		$tmp=~s/linux/$bold_str/g;
		print $tmp."\n";
    }



