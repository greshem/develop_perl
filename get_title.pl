#!/usr/bin/perl
for $each (glob("*.html"))
{
	get_title($each);
}

for $each (glob("*.htm"))
{
	get_title($each);
}

for $each (glob("*/*.htm"))
{
	get_title($each);
}

for $each (glob("*/*.html"))
{
	get_title($each);
}


#==========================================================================
sub get_title($)
{
	(my $each)=@_;
	open(FILE,$each) or die("open file error\n");
	while(<FILE>)
	{
		if(/<title>(.*)<\/title>/i)
		{
			#$title=$1;
			#$title=~s/&nbsp/_/g;
			#print  $$title,"\n";
		#	print $1;
			$title=$1;
			$title=~s/\&nbsp/_/g;
			$title=~s/;/_/g;
			$title=~s/ /_/g;
			$title=~s/\./_/g;
			print $each ."\t".$title,"\n";
			close(FILE);
		#	exit(1);
			#next;
		}
	} 

	close(FILE);
}
