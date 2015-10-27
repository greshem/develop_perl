# /bin/demangle_rename_function.pl ÀïÃæµÄ. 
sub cpp_demangle_function_delete_spical_chars($)
{
	(my $function)=@_;
	$function=~s/:/_/g;
	#$function=~s/~/_de_/g;
	$function=~s/~/_/g;
	#$function=~s/\!/_not_/g;
	$function=~s/\!/_/g;
	$function=~s/ /_/g;
	$function=~s/\[/_/g;
	$function=~s/\]/_/g;
	$function=~s/\</_/g;
	$function=~s/\>/_/g;
	$function=~s/\*/_/g;
	$function=~s/\+/_/g;
	$function=~s/\=/_/g;

	return $function;	
}

#==========================================================================
# /bin/delete_space_for_bash.pl
# ÓÐÒ»¸ö¼òµ¥µÄ·½Ê½ ÑéÖ¤ÏÂÃæµÄº¯Êý ÊÇ²»ÊÇ ¶Ô ascii ËùÓÐµÄ×Ö·û¶¼¸²¸ÇµôÁË, 
# 	man ascii  È»ºócopy Ò»¶Î,  ËùÓÐµÄascii µÄÎÄ±¾¿é ºÃÓÃÏÂÃæµÄº¯Êý È»ºó¿´Êä³öº¯Êý, ÓÐÃ»ÓÐÌØÊâ×Ö·û. 
sub delete_char_($)
{
	(my $each)=@_;
	$tofile=$each;
	$tofile=~s/\s/_/g;
	$tofile=~s/\(/_/g;
	$tofile=~s/\)/_/g;
	$tofile=~s/\&/_/g;
	$tofile=~s/\'/_/g;
	$tofile=~s/£¿/__/g;
	$tofile=~s/£¬/__/g;
	$tofile=~s/¿/__/g;
	$tofile=~s/=/_/g;
	$tofile=~s/\+/_/g;
	$tofile=~s/\:/_/g;
	$tofile=~s/\*/_/g;

	$tofile=~s/\?/_/g;
	$tofile=~s/\,/_/g;
	$tofile=~s/-/_/g;
	$tofile=~s/\{/_/g;
	$tofile=~s/\}/_/g;
	$tofile=~s/\;/_/g;
	$tofile=~s/\//_/g;
	$tofile=~s/\|/_/g;
	$tofile=~s/\\/_/g;
	$tofile=~s/\./_/g;
	$tofile=~s/\"/_/g;
	$tofile=~s/\@/_/g;
	$tofile=~s/\'/_/g;
	$tofile=~s/ /_/g;
	$tofile=~s/\t/_/g;
	$tofile=~s/\#/_/g;
	$tofile=~s/\`/_/g;
	$tofile=~s/\$/_/g;
	$tofile=~s/\%/_/g;
	$tofile=~s/\^/_/g;
	
	#print "#".$each, "---  ", $tofile,"\n";
	return $tofile;
}

open(FILE, "symbols_english") or die("open file error $!\n");
#open(FILE, "tmp") or die("open file error $!\n");
for(<FILE>)
{
	$line=cpp_demangle_function_delete_spical_chars($_);
	$line=delete_char_($line);
	print $line."\n";
}
