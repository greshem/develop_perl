#!/usr/bin/perl
my $input_file=shift or die("Usage; $0  input_file \n");
(my $name, $suffix)=($input_file=~/(.*)\.(.*)/);

#11025
#22050
#32000
#44100
#48000

my @rates= qw (
11025
22050
32000
44100
48000
);


#sox  -r $each  konglong_dalu_norm.ogg   konglong_dalu_norm_r$each.ogg 
print <<EOF
sox  $name.$suffix  $name.wav 
EOF
;

for $each (@rates)
{
	print <<EOF
sox  -r $each  $name.wav    ${name}_r${each}_.wav ;
EOF
;

}


sub ogg_sample_rate_failure()
{
	print <<EOF
#48000
sox  -r 48000  chongerfei_norm_div2.ogg    chongerfei_norm_div2_r48000.ogg
sox  -r 48000  konglong_dalu_norm.ogg   konglong_dalu_norm_r48000.ogg 

#22050
sox  -r 22050  chongerfei_norm_div2.ogg    chongerfei_norm_div2_r22050.ogg
sox  -r 22050  konglong_dalu_norm.ogg   konglong_dalu_norm_r22050.ogg 

#11025
sox  -r 11025  chongerfei_norm_div2.ogg    chongerfei_norm_div2_r11025.ogg
sox  -r 11025  konglong_dalu_norm.ogg   konglong_dalu_norm_r11025.ogg 


#32000
sox  -r 32000  chongerfei_norm_div2.ogg    chongerfei_norm_div2_r32000.ogg
sox  -r 32000  konglong_dalu_norm.ogg   konglong_dalu_norm_r32000.ogg 


EOF
;
}
