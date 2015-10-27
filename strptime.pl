#!/usr/bin/perl
use DateTime::Format::Strptime;
my $Strp = new DateTime::Format::Strptime(
                                       pattern     => '%m %d %T',
                                       locale      => 'en_AU',
                                       time_zone   => 'Australia/Melbourne',
                               );

         $Strp->parse_datetime('01 01 15:20:19');

         $Strp->format_datetime();
