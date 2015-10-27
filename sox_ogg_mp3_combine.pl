#!/usr/bin/perl
########################################################################
#main 
testunit();
mkdir("output/");
if(scalar(@ARGV)==0)
{
	my @bgs=grep{/^bg/} (glob("*.ogg"));
	push(@bgs, @bgs);
	push(@bgs, @bgs);
	push(@bgs, @bgs);
	push(@bgs, @bgs);
	push(@bgs, @bgs);

	my @storys=grep{$_!~/^bg/} (glob("*.ogg"));
	for(@storys)
	{
		my $bg=shift(@bgs);
		print ("perl $0  $_   $bg \n")
	}
	
}

my $story=shift or die("Usage: $0 story.mp3 background.mpg \n");
my $background=shift or die("Usage: $0 story.mp3 background.mp3 \n");

if($story=~/^\//)
{
	die("not abs path \n");
}
merge_mp3_for_eden($story, $background);



########################################################################
sub  merge_mp3_for_eden($$)
{
	(my $story, my $back_ground)=@_;
	open(OUTPUT, ">tmp_$story.sh");
	print OUTPUT  <<EOF

########################################################################
#main 
set -x 
sox -V  ${back_ground}   -n    	 #
sox -V  ${story}    -n  #


if [ ! -f   output/norm_${back_ground} ];then
sox  --norm   ${back_ground}   output/norm_${back_ground}
fi

if [  ! -f  output/norm_${story} ];then
	sox  --norm   ${story}   output/norm_${story}
fi

if [ ! -f   output/norm_div2_${back_ground}  ];then
	sox  -v 0.5   output/norm_${back_ground}    output/norm_div2_${back_ground} 
fi

if [ ! -f  output/norm_r44100_${story} ];then
	resample-sndfile -to 44100   output/norm_${story}  output/norm_r44100_${story}
fi

if [ ! -f  output/norm_div2_r44100_${back_ground} ];then
	resample-sndfile -to 44100   output/norm_div2_${back_ground}  	output/norm_div2_r44100_${back_ground}
fi

#sox -M  output/norm_div2_r44100_${back_ground} output/norm_r44100_${story}    output/combine.ogg

EOF
;
	close(OUTPUT);

	if(! -f  "output/norm_div2_r44100_${back_ground}")
	{
		#system("bash  tmp_$story.sh ");
	}	

	my $last_bg_ogg= "output/norm_div2_r44100_${back_ground}";
	my $last_story= "output/norm_r44100_${story}";
	my $bg_time= get_ogginfo_time($back_ground );
	my $story_time=get_ogginfo_time( $story );

	my $count=int($story_time/$bg_time);
	print "#需要把bg_time 扩张  $count 倍 \n";

	my $con_str;
	($last_bg_ogg, $con_str)= extend_with_n($last_bg_ogg , $count );
	open(OUTPUT, ">>tmp_$story.sh") or die("Open tmp2 error2.sh \n");

print OUTPUT  <<EOF
	set -x 
	$con_str 
if [ ! -f   output/combine_${story}_${back_ground} ];then
 	sox -M  $last_bg_ogg  $last_story     output/combine_${story}_${back_ground}
fi

if [ ! -f   output/trim_combine_${story}_${back_ground} ];then
 	sox  output/combine_${story}_${back_ground}  output/trim_combine_${story}_${back_ground}  trim 0  $story_time 
fi

EOF
;
	close(OUTPUT);
	#system("bash tmp2_$story.sh");
}


#a.mp3扩展 n倍的播放时间. 
sub extend_with_n($$)
{
	(my $ogg_file, $number)=@_;

	my $ogg_input_str;

	for(0..$number)
	{
		$ogg_input_str.=" $ogg_file ";
	}
	$number=$number+1;
	my $output_file= ${ogg_file}."_".${number}."_x_.ogg";
	$con_str= <<EOF
if [ ! -f   $output_file  ];then
	sox --combine  concatenate  $ogg_input_str   $output_file 
fi

EOF
;

	#my $con_str= "sox --combine  concatenate  $ogg_input_str   $output_file \n";

	return ($output_file, $con_str);	
}
#==========================================================================
#Playback length: 4m:58.031s
sub get_ogginfo_time($)
{
	(my $ogg_file)=@_;
	if(! -f $ogg_file)
	{
		die("$ogg_file not exists \n");
	}
	my $total_sec;
	open(PIPE, "ogginfo $ogg_file |") or die("ogginfo error yum install  ogg \n");
	for(<PIPE>)
	{
		#print "EEEEEEEEEEEEEEEE $_";
		chomp;
		if($_=~/Playback length: (.*)/)
		{
			my $sec_str= $1;
			$total_sec=change_to_second($sec_str);
		}
	}
	close(PIPE);
	return $total_sec;
}

#4m:58.031s
sub change_to_second($)
{
	(my $input_str)=@_;
	(my $mintus, my $sec)= ($input_str=~/(\d+)m:(\d+)\..*s$/);

	my $total= $mintus*60+$sec;
	print (" $input_str   Total: $total second \n");
	return $total;

}

sub testunit()
{
	change_to_second("10m:55.333s");
	change_to_second("4m:58.031s");
}

__DATA__
########################################################################
#main 
sox -V  chongerfei.ogg   -n    	 #
sox -V  konglong_dalu.ogg    -n  #



sox  --norm   chongerfei.ogg   chongerfei_norm.ogg
sox  --norm   konglong_dalu.ogg   konglong_dalu_norm.ogg

sox  -v 0.5   chongerfei_norm.ogg    chongerfei_norm_div2.ogg 



#11025
#sox  chongerfei_norm_div2.ogg  chongerfei_norm_div2.wav 
#sox  -r 11025  chongerfei_norm_div2.wav    chongerfei_norm_div2_r11025.wav
#sox   chongerfei_norm_div2_r11025.wav chongerfei_norm_div2_r11025.ogg


#11025
#sox  konglong_dalu_norm.ogg  konglong_dalu_norm.wav 
#sox  -r 11025  konglong_dalu_norm.wav    konglong_dalu_norm_r11025.wav
#sox   konglong_dalu_norm_r11025.wav konglong_dalu_norm_r11025.ogg
#rm *.wav -f 

#速率的调整 
#sox  /tmp/chongerfei_r11025_.wav  /tmp/speed.wav speed 4

resample-sndfile -to 44100   konglong_dalu_norm.ogg  konglong_dalu_norm_r44100.ogg
resample-sndfile -to 44100   chongerfei_norm_div2.ogg  	chongerfei_norm_div2_r44100.ogg

sox -M  chongerfei_norm_div2_r44100.ogg  konglong_dalu_norm_r44100.ogg    combine.ogg


