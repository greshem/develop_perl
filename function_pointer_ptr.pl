#!/usr/bin/perl
#2011_04_07_19:35:02   ÐÇÆÚËÄ   add by greshem
%fn=( "exit"=>sub{  print "exit\n"},
	"hello"=> sub{print "main\n"}, 
	"print"=> sub{my ($line)=@_; print $line;},
	);

print "test\n";
#$fn{"hello"}->();
$fn{"hello"}();
$fn{"print"}("print with arguments \n");
my $ref=sub{print "bbbbbbbbbb\n"};

$ref->();
