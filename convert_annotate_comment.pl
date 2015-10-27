#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

convert -font helvetica -fill white -pointsize 36 \
-draw 'text 10,50 "Floriade 2002, Canberra, Australia"' \
floriade.jpg comment.jpg

convert -font fonts/1900805.ttf -fill white -pointsize 36 \
-draw 'text 10,475 "stillhq.com"' \
floriade.jpg stillhq.jp

