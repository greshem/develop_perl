#!/usr/bin/perl
# test read/write of DB_File
# create by lianming: 2009-08-10
# last modify by lianming: 2009-08-10
 
 use strict;
 use warnings;
 use DB_File;
  

  my %hash;
  my $file_name = $ARGV[0];
   
   tie(%hash, 'DB_File', $file_name, O_WRONLY, 0666, $DB_HASH)
       || die "Cannot open $file_name: $!\n";
        

        ## == Add some info ==
        for (my $i = 0; $i < 10; $i ++) {
                $hash{$i} = $i."new";
                }
                 
                 print "Print as hash:\n";
                 foreach my $key (keys (%hash)) {
                         print "$key->$hash{$key}\n";
                         }
                         print "End\n";
                          
                          untie %hash;
