#!/usr/bin/perl
# This is a simple disassembler using Disassemble::X86

use 5.006;
use strict;
use warnings;
use Getopt::Std;
#use lib "blib/lib";
use Disassemble::X86;

use vars qw( $opt_a $opt_b $opt_o $opt_p );
getopts("a:b:o:p") and @ARGV == 1 or die <<END_USAGE;
usage: disasm [-b bits] [-o origin] [-p] filename
-a  set the address at which code is loaded
-b  set the code size (16 or 32 bits)
-o  set the origin at which disassembly is started
-p  include processor model information
END_USAGE

open F, "<$ARGV[0]" or die "can't read $ARGV[0]: $!\n";
undef $/;
my $file = <>;
close F;

my $dis = Disassemble::X86->new(
    start => hex($opt_a || 0),
    pos   => hex($opt_o || $opt_a || 0),
    size  => $opt_b || 32,
    text  => $file,
);

until ( $dis->at_end() ) {
  my $op = $dis->disasm();
  defined($op) or $op = sprintf "db 0x%x", $dis->next_byte();
  if ($opt_p) {
    printf "%04x: %-30s  ; %s\n", $dis->op_start(), $op, $dis->op_proc();
  }
  else { printf "%04x: %s\n", $dis->op_start(), $op }
}

# end disasm
