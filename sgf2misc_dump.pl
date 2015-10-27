    use strict;
    use Games::Go::SGF2misc;
	
my $input=shift or die("usage: $0 input.sgf\n");
    my $sgf = new Games::Go::SGF2misc; 
       #$sgf->parse("sgf/jettero-sixrusses-2004-03-18.sgf");
       $sgf->parse("$input");
       #$sgf->parse("/tmp2/gnugo/gnugo-3.9.1/patterns/takamoku.sgf");
       #$sgf->parse("/tmp/Kogo_s_Joseki_Dictionary.sgf");
       #$sgf->parse("/media/sda1/Kogo_s_Joseki_Dictionary.sgf");

    my $nl  = $sgf->nodelist;

#use Data::Dumper;
print Data::Dumper->Dump([$nl]);

	my $hash=$sgf->parse_hash();
print Data::Dumper->Dump([$sgf]);


    my $end = $nl->{1}[0][ $#{$nl->{1}[0]} ];
              # 1st game  1st variation    last node

	#my $end="1.1-33";
    
 
	#print "FFFFFFFFFFFFFFFFFFFF:".Data::Dumper->Dump([$end])."\n";;

	
    my $caps = $sgf->as_perl( $end )->{captures};
    my $tmp = $sgf->as_perl( $end );
	print $caps."\n";
	#print Data::Dumper->Dump([$tmp]);


 	#open my $out, ">", "example.html" or die $!;
    #print $out, $sgf->as_html( $end, "img/" );
    #my $image = $sgf->as_image($end, {filename=>"output.png"});

    print $sgf->as_text($end), "Captures:  Black-$caps->{B} / White-$caps->{W}\n";

