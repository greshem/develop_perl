#!/usr/bin/perl
@a=1..10;
@b=20..30;
@c=();
push(@a, @b);
push(@a, @c);
print join("|", @a);
