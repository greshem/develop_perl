#!/usr/bin/perl
use List::Util 'shuffle';
    @shuffled = shuffle(@list);
for $each (shuffle(glob("id/*_1.html")))
{
	my $id=$each;
	$id=~s/id\///g;
	$id=~s/_1.html$//g;

	my $count=get_count_from_file($each);
	
	get_jpg_url($each);
	
	if(defined($count) && ($count != 0) )
	{

		my $title=get_title($each);
		print $each."\t".$count."| $title \n";


		# for $i (1..$count)
		# {
		# 	print "wget -T 3 -t 3 http://lianhuanhua.mom001.com/showphoto/${id}_$i.html -O book/${id}_$count/${id}_$i.html \n";
		# 	system("wget -T 3 -t 3 http://lianhuanhua.mom001.com/showphoto/${id}_$i.html -O book/${id}_$count/${id}_$i.html \n");
		# 	my $tmp_input_file="book/${id}_$count/${id}_$i.html";
		# 	my $url= get_jpg_url($tmp_input_file);
		# 	system("wget -T 3 -t 3 --mirror -np $url \n");
		# 	my $local_jpg=$url;
		# 	$local_jpg=~s/http:\/\///g;
		# 	if(! -f $local_jpg)
		# 	{
		# 		printf ("$local_jpg 没有下载 \n");
		# 	}
		# 	else
		# 	{
		# 		system("cp $local_jpg book/{$id}_$count/$i.jpg ");
		# 	}
		# }
	}
}

#1242_1.html:      <div id="t_photo"><img id="big_photo" src="http://imgslhh.mom001.com/630/1000/UploadFiles/200707/20070724102946271.jpg" alt="小刀会" onload="rawImage(this,630,1000)"/>

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
			#print $each ."\t".$title,"\n";
			close(FILE);
			return $title;
		#	exit(1);
			#next;
		}
	} 
	close(FILE);
	return $title;
}
sub get_jpg_url($)
{
	(my $input)=@_;
	open(GET_JPG, $input) or  warn("open file error \n");
	for(<GET_JPG>)
	{
		if($_=~/big_photo/)
		{
			my @tmp=split(/"/, $_);
			my @tmp2=grep {/jpg$/} @tmp;
			$jpg=$tmp2[0];
			#print "FFFFFFFFf".$jpg."\n";
			close(GET_JPG);
			return $jpg ;
		}
	}
	close(GET_JPG);
}
sub get_count_from_file($)
{
	(my $input)=@_;
	open(FILE, $input) or warn("open file error \n");

	#h1><span id="txtTitle"><a href="/ps/2009/0321/1642.html" title="包公访狄青(狄青演义18)">包公访狄青(狄青演义18)</a></span><span id="total">(<span class="cC00">2</span>/92)</span></h1>
	for(<FILE>)
	{
		if($_=~/\/(\d+)\)/)
		{
			#print $_."\n";
			#print $1."\n";
			close(FILE);
			return $1;
		}
		else
		{
			#print $_."\n";
		}
	}
	close(FILE);
	return undef;
}
