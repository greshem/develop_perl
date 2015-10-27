#!/usr/bin/perl

use warnings;
use strict;

package Player;

sub new {
    my $class=shift;
    my $player={};
    my $ref=sub {
       my ($operation,$key,$value)=@_;
       if ($operation eq "set")
          { 
           $player->{$key}=$value;
           print "$key:$value\n";           
           }
       elsif ($operation eq "get")
           {
            
            print "$player->{$key}\n";
            }
       else
           {
           print "the operation is not set\n"; 
           }
                  
       bless(return(my $ref), $class);
        }
      #bless ($ref, $class);
    
   }

sub set {
    my ($self,$key,$value)=@_;
    $self->("set",$key,$value);
    }
sub get {
    my ($self,$key)=@_;
    return $self->("get",$key);
    
   }

push(@INC, `dirname $0`);
