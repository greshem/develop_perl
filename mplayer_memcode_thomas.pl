#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
20100209. 
1. �Ȼ�ȡ �½�
mplayer -identify dvd://	-nosound -vc dummy -vo null 
��ȡ��Ӧ�� 

2. ���Ե����⣬ 
   #dvd2mp3�����������÷����� 
   mplayer -v dvd:// |grep  "==> Found audio stream: "  ��ȡ���ԣ� 
   Ӣ�ĵ������� 128 
   �й�������   129

3. ת���� mp4 
һ���½ڵĻ�Ӧ���� 3-3  3-4 ���������½��ˡ� 
mencoder dvd://2 -chapter 10-10 -o title10.avi -oac copy -ovc lavc -lavcopts vcodec=mpeg4 -aid 129


4. mp4 ��ת���� MP3. 
��ȡ���� �� �ٶȸ��죬 ��Ƶ�������ÿ��ǡ� 
mplayer video.file     -ao pcm:file=a.wav -vc dummy -vo null 
���ַ�ʽ�ȽϷ���֮��Ҫ���б��롣 
���������ַ�ʽ 

mencoder -o out.mp3 -ovc frameno -oac mp3lame -lameopts cbr:br=128 -of rawaudio $1
��ԱȽ϶��� 
mplayer video.file     -ao pcm:file=a.wav  -vo null  ������������Ҫ���룬 �����ٶȻ�����һЩ�� 
mplayer dvd://2  -chapter 10-10  -ao pcm:file=10.wav  -vc dummy -vo null 
######################
4-2 �� dump_to_audio.sh �Ƕ� thomas ��ʵ������ �� 3 ���½ڣ� ÿ���½�
��18����Ŀ�� 

5. ��ȡ�����е�WAV֮�� ͨ��K3B ��¼���е�WAV�� AUDIO��������ȥ�� 

6. 

