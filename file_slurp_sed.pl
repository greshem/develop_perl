#!/usr/bin/perl

  use File::Slurp qw(edit_file);

  edit_file { s/DWX_DEBUG/DWX_DEBUG/g } 'bake.bat' ; 
