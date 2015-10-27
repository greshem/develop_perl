#!/usr/bin/perl 

use GD::SecurityImage;

# Create a normal image
my $image = GD::SecurityImage->new(
	 width	 => 80,
	 height	 => 30,
	 lines	 => 10,
	 gd_font => 'giant',
	  );
 $image->random( "your_random_str");
 $image->create( normal => 'rect' );
my($image_data, $mime_type, $random_number) = $image->out;
print $image_data;

