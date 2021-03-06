# /bin/demangle_rename_function.pl 里面的. 
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
# 有一个简单的方式 验证下面的函数 是不是 对 ascii 所有的字符都覆盖掉了, 
# 	man ascii  然后copy 一段,  所有的ascii 的文本块 好用下面的函数 然后看输出函数, 有没有特殊字符. 
sub delete_char_($)
{
	(my $each)=@_;
	$tofile=$each;
	$tofile=~s/\s/_/g;
	$tofile=~s/\(/_/g;
	$tofile=~s/\)/_/g;
	$tofile=~s/\&/_/g;
	$tofile=~s/\'/_/g;
	$tofile=~s/？/__/g;
	$tofile=~s/，/__/g;
	$tofile=~s/�/__/g;
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
