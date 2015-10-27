# ****************************************************************************
#
#   DESCRIPTION
#
#	Unpack list of files recursively (If package contains more
#       archives)
#
#   INPUT PARAMETERS
#
#	\@array	    List of files
#	\%hash	    Unpack command hash table: REGEXP => COMMAND, where
#		    %s is substituted for filename
#	$check	    "-noroot", will not check the archive content
#	$opt	    "-rm", will remove any existing unpack dir
#
#   RETURN VALUES
#
#       none
#
# ****************************************************************************

sub Unpack($ $; $ $);    # must be introdced due to recursion

sub Unpack ($ $; $ $)
{
    my $id = "$LIB.Unpack";
    my ( $filesArray, $cmdHash, $check, $opt ) = @ARG;

    $check = 1	 if  not defined $check;
    $check = 0   if  $check eq -noroot;
    $opt   = ''  if  not defined $opt;


    local $ARG;
    my $origCwd = cwd();

    $debug  and  print "$id: entry cwd = $origCwd OPT [$opt]\n";




    my @array = sort { length $b <=> length $a } keys %$cmdHash;
    $debug  and  print "$id: SORTED decode array @array\n";


    for ( @$filesArray )
    {
	$debug  and warn "$id: unpacking $ARG\n";

	if ( -d )
	{
	    $verb  and  print "$id: $ARG is directory, skipped.\n";
	    next;
	}
	elsif ( not -f )
	{
	    $verb and  print "$id: $ARG is not a file (not exist), skipped.\n";
	    next;
	}



	#   The filename may look lik test/tar.gz

	my $gocwd = dirname($ARG)  || '.' ;
	chdir $gocwd or  die "$id: [for] Can't chdir [$gocwd] $ERRNO";


	#   Check only archives that do not contains some kind
	#   of numbering for missing ROOT directories.

	my $cwd   = cwd();
	my $chdir = 0;
	my $newDir;

	my $file = basename $ARG;

	# ............................................ check ...
	# Must contain root directory in archive
	# We check every archive. Regexp \d would have
	# skipped names looking like package-1.34.tar.gz

	if ( $check  )  #    and  not /-[\d]/ )    #font s/
	{
	    $debug  and  print "##\n";

	    $newDir = FileRootDirCreate basename($ARG), $cwd, $opt;

	    $debug  and  print "## $newDir\n";

	    if ( $newDir )
	    {
		$debug  and  print "$id: cd newdir $newDir\n";

		unless ( chdir $newDir )
		{
		    print "$id: ERROR chdir $newDir $ERRNO\n";
		    next;
		}

		$file = "../$file";
		$chdir = 1;
	    }
	}

	# ........................................... unpack ...

	$debug  and   print ">>\n";

	my $cmd = FileDeCompressedCmd $file;

	$debug  and  print "$id: unpacking CWD ", cwd(), " [$cmd]\n";

	my @response;
	@response = `$cmd`    unless $test;

	print "@response\n"   if $verb;

	# ........................................ recursive ...

	for my $entry ( @response )  # Make this recursive
	{
	    local $ARG = $entry;
	    chomp;

	    if ( /\.(bz2|gz|z|zip)$/i )  # s/
	    {
		$debug  and  print "$id: >> RESCURSIVE [$ARG]\n";

		Unpack( [ $ARG ], $cmdHash, -noroot, $opt );
	    }
	}


	chdir $cwd    if  $chdir;   # Get back to original

    }

    $debug  and  print "EXIT chdir $origCwd\n";

    chdir $origCwd  or  die "$id: [exit] Can't chdir [$origCwd] $ERRNO";

}

