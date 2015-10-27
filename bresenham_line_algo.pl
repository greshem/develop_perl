#!/usr/bin/perl 

use Algorithm::Line::Bresenham qw/line/;
my @points = line(3,3 => 5,55);
print $points[0][0];
print $points[0][1];


use Data::Dumper;
print Data::Dumper->Dump([\@points]);

           # returns the list: [3,3], [4,2], [4,1], [5,0]
           # line(3,3 => 5,0,  \&draw_line);
           # calls draw_line on each point in turn
