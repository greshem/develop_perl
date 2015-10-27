sub sox_norm_method()
{
print <<EOF
#获取 增益的状态 最佳 增益 值 
sox before.wav -n stat -v

sox -v `sox before.wav -n stat -v 2>&1` before.wav after.wav
EOF
;

}

sub sox_norm_method2_()
{
print <<EOF

#正则化
 sox  --norm   libai.ogg  output.ogg
EOF
;
}

sub  increase_volume()
{
print <<EOF
	sox file1.wav -v 0.6 file2.wav
EOF
;
}

#sox  test.wav  test_gain.wav gain 10 #比原来的声音大一些
#sox  test.wav  test_gain.wav gain 109 #这里嘶嘶 的声音很大 很嘈杂 不堪耳听了
sub  decrease_volume()
{
print <<EOF
	sox file1.wav -v 1.6 file2.wav
EOF
;
}

sub  get_info()
{
	print <<EOF
	sox -V  input.file  -n 
EOF
;

}
sub sample_rate()
{
	print <<EOF
sox file1.wav -r 48000 file2.wav
EOF
;
}

sub combine()
{
	print <<EOF
	sox -M track1.L.wav track1.R.wav track1.Stereo.wav
EOF
;
}



