 #!/usr/bin/perl

 use warnings;
 use strict;

 package City;
 sub new {
 my $class=shift;
 my %city=@_;
 my $ref={
    "Name"=>$city{"Name"},
    "Location"=>$city{"Location"},
    "Country"=>$city{"Country"},
    };
 bless($ref,$class);
 return($ref);
 }

 sub get_stats {
 my $self=shift;
 print "the city hash includes the properties:\n";
 while (my($key,$value)=each(%{$self}))
 {
  print "$key:$value\n";
   }
}

push(@INC,`dirname $0`);
