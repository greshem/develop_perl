sub sox_norm_method()
{
print <<EOF
#��ȡ �����״̬ ��� ���� ֵ 
sox before.wav -n stat -v

sox -v `sox before.wav -n stat -v 2>&1` before.wav after.wav
EOF
;

}

sub sox_norm_method2_()
{
print <<EOF

#����
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

#sox  test.wav  test_gain.wav gain 10 #��ԭ����������һЩ
#sox  test.wav  test_gain.wav gain 109 #����˻˻ �������ܴ� ������ ����������
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



