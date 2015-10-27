#! /usr/bin/perl

use warnings;
use strict;

package Team;
sub new {
    my $team=shift;
    my $ref={};
    bless($ref,$team);
    return $ref;
}
sub set_member {
    my $this=shift;
    $this->{"captain"}=shift;
    $this->{"goalkeeper"}=shift;
    print "\$this is a class ",ref($this)," reference.\n";
}
sub get_member {
    my $this=shift;
    print "the team hash includes the attributes:\n";
    while (my($key,$value)=each(%{$this}))
    {
     print "$key:$value\n";
    }
}

push(@INC,`dirname $0`);
