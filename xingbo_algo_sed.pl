#!/usr/bin/perl
#my $file=shift or die("usage: $0 input_file \n");
my $x;
my $y;

print ord('a')."\n";  #97
print ord('m')."\n";  #105
print ord('t')."\n";  #116
#exit(0);

for ($x=97; $x<=116; $x++)
{
	#print $x."\n";
	#for $y  (ord('a')..ord('m'))
	for ($y=97; $y<=116; $y++)
	{
		my $new_x=$x;
		my $new_y=$y;
		if(  $x>=ord('i') )
		{ $new_x+=1; }
		if(  $y >= ord('i'))
		{ $new_y+=1; }
		#print $x.$y."\n";
		#print $x.$y."\n";
		
		#print "sed  -i 's/".chr($new_x),chr($new_y)."/".chr($x),chr($y)."/g'  $file  \n";
		my $input=  chr($new_x).chr($new_y);
		my $output= chr($x).chr($y);
		print "\$_=~s/$input/$output/g;\n"
	}

}
__DATA__
for $x ('a'..'m')
{
	#for $y ('a'..'m')
	{
		my $old_x=y;
		my $old_y=y;
		if(  $x>='i' )
		{ $x+=1; }
		if(  $y >= 'i')
		{ $y+=1; }
		#prinf "x y ->  old_x old_y \n";
		print $x.$y."\n";
	}
}

