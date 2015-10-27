

  use Games::SGF;

         my $sgf = new Games::SGF();

 ##        $sgf->setStoneRead( sub { "something useful"} );
 #        $sgf->setMoveRead( sub { "something useful"} );
 #        $sgf->setPointRead( sub { "something useful"} );

 #        $sgf->addTag('KM', $sgf->T_GAME_INFO, $sgf->V_REAL );
         $sgf->readFile("/tmp/Kogo_s_Joseki_Dictionary.sgf");
 
#        $sgf->setProperty( "AP", $sgf->compose("MyApp", "Version 1.0") );

