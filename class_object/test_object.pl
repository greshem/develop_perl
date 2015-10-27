#!/usr/bin/perl

use warnings;
use strict;

sub test_Team()
{
	use Team;

	my $team=Team->new();
	$team->set_member("Cannavaro","Buffon");
	$team->get_member();
}

sub test_City()
{
	use City;

	my $city=City->new( "Name"=>"Milan", "Country"=>"Italy", "Location"=>"European",);
	$city->get_stats();

}



sub test_Player()
{                    
	use Player;
	 
	my $data=Player->new();
	$data->("set","Buffon","goalkepper");
	$data->("get","Buffon");
}

test_Team();
test_City();
test_Player();
