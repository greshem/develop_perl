#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
20100209. 
1. 先获取 章节
mplayer -identify dvd://	-nosound -vc dummy -vo null 
获取对应的 

2. 语言的问题， 
   #dvd2mp3里面这样的用法错误。 
   mplayer -v dvd:// |grep  "==> Found audio stream: "  获取语言， 
   英文的语言是 128 
   中国语言是   129

3. 转化成 mp4 
一个章节的话应该用 3-3  3-4 就是两个章节了。 
mencoder dvd://2 -chapter 10-10 -o title10.avi -oac copy -ovc lavc -lavcopts vcodec=mpeg4 -aid 129


4. mp4 再转换成 MP3. 
提取声音 ， 速度更快， 视频根本不用考虑。 
mplayer video.file     -ao pcm:file=a.wav -vc dummy -vo null 
这种方式比较烦，之后还要进行编码。 
可以用这种方式 

mencoder -o out.mp3 -ovc frameno -oac mp3lame -lameopts cbr:br=128 -of rawaudio $1
相对比较而言 
mplayer video.file     -ao pcm:file=a.wav  -vo null  对视屏还是需要解码， 所以速度还是慢一些。 
mplayer dvd://2  -chapter 10-10  -ao pcm:file=10.wav  -vc dummy -vo null 
######################
4-2 用 dump_to_audio.sh 是对 thomas 的实例化， 有 3 个章节， 每个章节
有18个节目。 

5. 获取到所有的WAV之后， 通过K3B 刻录所有的WAV到 AUDIO光盘上面去。 

6. 

