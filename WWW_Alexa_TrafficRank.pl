#!perl -w

#use strict;
#use warnings;

use WWW::Alexa::TrafficRank; 
my $tr = WWW::Alexa::TrafficRank->new();

my $rank = $tr->get('www.baidu.com');

print $rank
