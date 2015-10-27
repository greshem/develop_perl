#!/usr/bin/perl

use strict;
use warnings;

use Tree::Simple;
use Tree::Parser;
use Array::Iterator;

my $tp = Tree::Parser->new("sample_tree.txt");
#print $tp;


#my %hash;
use Data::Dumper;
#print Data::Dumper->Dump([$tp]);

#my $tree = $tp->parse();
#print Data::Dumper->Dump([$tree]);

my $tree = $tp->getTree();
#print Data::Dumper->Dump([$tree]);


#print $tree:

$tree->traverse(sub {
		 my ($_tree) = @_;
		 print (("\t" x $_tree->getDepth()), $_tree->getNodeValue(), "\n");
	 });
