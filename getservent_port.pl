#!/usr/bin/perl 
#use strict;
#use warnings;


        use Net::servent;
        $s = getservbyname(shift || 'ftp') || die "no service";
        printf "port for %s is %s, aliases are %s\n",
           $s->name, $s->port, "@{$s->aliases}";

        use Net::servent qw(:FIELDS);
        getservbyname(shift || 'ftp') || die "no service";
        print "port for $s_name is $s_port, aliases are @s_aliases\n";

