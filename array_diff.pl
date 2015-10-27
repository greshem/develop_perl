#!/usr/bin/perl
#Array::Diff - Find the differences between two arrays
#SYNOPSIS
           my @old = ( ¡¯a¡¯, ¡¯b¡¯, ¡¯c¡¯ );
           my @new = ( ¡¯b¡¯, ¡¯c¡¯, ¡¯d¡¯ );

           my $diff = Array::Diff->diff( \@old, \@new );

           $diff->count   # 2
           $diff->added   # [ ¡¯d¡¯ ];
           $diff->deleted # [ ¡¯a¡¯ ];
#Array::Compare
