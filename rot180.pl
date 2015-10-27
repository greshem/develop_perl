#!/usr/bin/perl 
open(FILE, $ARGV[0]) or die("open file error\n");
@a;
$i=0;
$maxLength=0;
while(<FILE>)
{
	#chomp;
	$a[$i]=$_;
	$maxLength=($maxLength>length($_)?$maxLength:length($_));
	$i++;
}

$size=scalar(@a);
#for($i=0;$i< $size; $i++)
#{
#	$append=$maxLength-length($a[$i]);
#	$append_str="\ "x$append;
#	$a[$i]=~s/\n/$append_str/g;
#	$tmp= reverse($a[$i]) ;
#	print  $tmp,"\n";
#	#print $a[$i],"";
#}

for ($i=$size; $i>0 ; $i--)
{
	print $a[$i];
}
