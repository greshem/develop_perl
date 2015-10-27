#!/usr/bin/perl
use MP3::Tag qw(autoinfo);

#autoinfo()
$mp3 = MP3::Tag->new($filename);

# get some information about the file in the easiest way
#($title, $track, $artist, $album, $comment, $year, $genre) = $mp3->autoinfo();
#($title, $track, $artist, $album, $comment, $year, $genre) = $mp3->autoinfo();

@tags = $mp3->get_tags();

