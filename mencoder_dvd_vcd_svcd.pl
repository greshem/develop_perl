#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
14.8.1. Format Constraints

MEncoder 通过使用 libavcodec 库可以创建用于VCD, SCVD and DVD 格式的MPEG文件 .创建好的MPEG文件可以用 vcdimager 或者 dvdauthor   创建光盘，能够在一个标准的（机顶？？）播放机上播放。

The DVD, SVCD, and VCD formats are subject to heavy constraints. Only a small selection of encoded picture sizes and aspect ratios are available. If your movie does not already meet these requirements, you may have to scale, crop or add black borders to the picture to make it compliant.
14.8.1.1. Format Constraints
Format 	Resolution 	V. Codec 	V. Bitrate 	Sample Rate 	A. Codec 	A. Bitrate 	FPS 	Aspect
NTSC DVD 	720x480, 704x480, 352x480, 352x240 	MPEG-2 	9800 kbps 	48000 Hz 	AC-3,PCM 	1536 kbps (max) 	30000/1001, 24000/1001 	4:3, 16:9 (only for 720x480)
NTSC DVD 	352x240[a] 	MPEG-1 	1856 kbps 	48000 Hz 	AC-3,PCM 	1536 kbps (max) 	30000/1001, 24000/1001 	4:3, 16:9
NTSC SVCD 	480x480 	MPEG-2 	2600 kbps 	44100 Hz 	MP2 	384 kbps (max) 	30000/1001 	4:3
NTSC VCD 	352x240 	MPEG-1 	1150 kbps 	44100 Hz 	MP2 	224 kbps 	24000/1001, 30000/1001 	4:3
PAL DVD 	720x576, 704x576, 352x576, 352x288 	MPEG-2 	9800 kbps 	48000 Hz 	MP2,AC-3,PCM 	1536 kbps (max) 	25 	4:3, 16:9 (only for 720x576)
PAL DVD 	352x288[a] 	MPEG-1 	1856 kbps 	48000 Hz 	MP2,AC-3,PCM 	1536 kbps (max) 	25 	4:3, 16:9
PAL SVCD 	480x576 	MPEG-2 	2600 kbps 	44100 Hz 	MP2 	384 kbps (max) 	25 	4:3
PAL VCD 	352x288 	MPEG-1 	1152 kbps 	44100 Hz 	MP2 	224 kbps 	25 	4:3

[a] These resolutions are rarely used for DVDs because they are fairly low quality.

If your movie has 2.35:1 aspect (most recent action movies), you will have to add black borders or crop the movie down to 16:9 to make a DVD or VCD. If you add black borders, try to align them at 16-pixel boundaries in order to minimize the impact on encoding performance. Thankfully DVD has sufficiently excessive bitrate that you do not have to worry too much about encoding efficiency, but SVCD and VCD are highly bitrate-starved and require effort to obtain acceptable quality.
14.8.1.2. GOP Size Constraints

DVD, VCD, and SVCD also constrain you to relatively low GOP (Group of Pictures) sizes. For 30 fps material the largest allowed GOP size is 18. For 25 or 24 fps, the maximum is 15. The GOP size is set using the keyint option.
14.8.1.3. Bitrate Constraints

VCD video is required to be CBR at 1152 kbps. This highly limiting constraint also comes along with an extremly low vbv buffer size of 327 kilobits. SVCD allows varying video bitrates up to 2500 kbps, and a somewhat less restrictive vbv buffer size of 917 kilobits is allowed. DVD video bitrates may range anywhere up to 9800 kbps (though typical bitrates are about half that), and the vbv buffer size is 1835 kilobits.
14.8.2. Output Options

MEncoder has options to control the output format. Using these options we can instruct it to create the correct type of file.

The options for VCD and SVCD are called xvcd and xsvcd, because they are extended formats. They are not strictly compliant, mainly because the output does not contain scan offsets. If you need to generate an SVCD image, you should pass the output file to vcdimager.

VCD:

-of mpeg -mpegopts format=xvcd

SVCD:

-of mpeg -mpegopts format=xsvcd

DVD (with timestamps on every frame, if possible):

-of mpeg -mpegopts format=dvd:tsaf

DVD with NTSC Pullup:

-of mpeg -mpegopts format=dvd:tsaf:telecine -ofps 24000/1001

This allows 24000/1001 fps progressive content to be encoded at 30000/1001 fps whilst maintaing DVD-compliance.
14.8.2.1. Aspect Ratio

The aspect argument of -lavcopts is used to encode the aspect ratio of the file. During playback the aspect ratio is used to restore the video to the correct size.

16:9 or "Widescreen"

-lavcopts aspect=16/9

4:3 or "Fullscreen"

-lavcopts aspect=4/3

2.35:1 or "Cinemascope" NTSC

-vf scale=720:368,expand=720:480 -lavcopts aspect=16/9

To calculate the correct scaling size, use the expanded NTSC width of 854/2.35 = 368

2.35:1 or "Cinemascope" PAL

-vf scale=720:432,expand=720:576 -lavcopts aspect=16/9

To calculate the correct scaling size, use the expanded PAL width of 1024/2.35 = 432
14.8.2.2. Maintaining A/V sync

In order to maintain audio/video synchronization throughout the encode, MEncoder has to drop or duplicate frames. This works rather well when muxing into an AVI file, but is almost guaranteed to fail to maintain A/V sync with other muxers such as MPEG. This is why it is necessary to append the harddup video filter at the end of the filter chain to avoid this kind of problem. You can find more technical information about harddup in the section Improving muxing and A/V sync reliability or in the manual page.
14.8.2.3. Sample Rate Conversion

If the audio sample rate in the original file is not the same as required by the target format, sample rate conversion is required. This is achieved using the -srate option and the -af lavcresample audio filter together.

DVD:

-srate 48000 -af lavcresample=48000

VCD and SVCD:

-srate 44100 -af lavcresample=44100

14.8.3. Using libavcodec for VCD/SVCD/DVD Encoding
14.8.3.1. Introduction

libavcodec can be used to create VCD/SVCD/DVD compliant video by using the appropriate options.
14.8.3.2. lavcopts

This is a list of fields in -lavcopts that you may be required to change in order to make a complaint movie for VCD, SVCD, or DVD:

    *

      acodec: mp2 for VCD, SVCD, or PAL DVD; ac3 is most commonly used for DVD. PCM audio may also be used for DVD, but this is mostly a big waste of space. Note that MP3 audio is not compliant for any of these formats, but players often have no problem playing it anyway.
    *

      abitrate: 224 for VCD; up to 384 for SVCD; up to 1536 for DVD, but commonly used values range from 192 kbps for stereo to 384 kbps for 5.1 channel sound.
    *

      vcodec: mpeg1video for VCD; mpeg2video for SVCD; mpeg2video is usually used for DVD but you may also use mpeg1video for CIF resolutions.
    *

      keyint: Used to set the GOP size. 18 for 30fps material, or 15 for 25/24 fps material. Commercial producers seem to prefer keyframe intervals of 12. It is possible to make this much larger and still retain compatibility with most players. A keyint of 25 should never cause any problems.
    *

      vrc_buf_size: 327 for VCD, 917 for SVCD, and 1835 for DVD.
    *

      vrc_minrate: 1152, for VCD. May be left alone for SVCD and DVD.
    *

      vrc_maxrate: 1152 for VCD; 2500 for SVCD; 9800 for DVD. For SVCD and DVD, you might wish to use lower values depending on your own personal preferences and requirements.
    *

      vbitrate: 1152 for VCD; up to 2500 for SVCD; up to 9800 for DVD. For the latter two formats, vbitrate should be set based on personal preference. For instance, if you insist on fitting 20 or so hours on a DVD, you could use vbitrate=400. The resulting video quality would probably be quite bad. If you are trying to squeeze out the maximum possible quality on a DVD, use vbitrate=9800, but be warned that this could constrain you to less than an hour of video on a single-layer DVD.
    *

      vstrict: vstrict=0 should be used to create DVDs. Without this option, MEncoder creates a stream that cannot be correctly decoded by some standalone DVD players.

14.8.3.3. Examples

This is a typical minimum set of -lavcopts for encoding video:

VCD:

-lavcopts vcodec=mpeg1video:vrc_buf_size=327:vrc_minrate=1152:\
vrc_maxrate=1152:vbitrate=1152:keyint=15:acodec=mp2

SVCD:

-lavcopts vcodec=mpeg2video:vrc_buf_size=917:vrc_maxrate=2500:vbitrate=1800:\
keyint=15:acodec=mp2

DVD:

-lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:\
keyint=15:vstrict=0:acodec=ac3

14.8.3.4. Advanced Options

For higher quality encoding, you may also wish to add quality-enhancing options to lavcopts, such as trell, mbd=2, and others. Note that qpel and v4mv, while often useful with MPEG-4, are not usable with MPEG-1 or MPEG-2. Also, if you are trying to make a very high quality DVD encode, it may be useful to add dc=10 to lavcopts. Doing so may help reduce the appearance of blocks in flat-colored areas. Putting it all together, this is an example of a set of lavcopts for a higher quality DVD:

-lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=8000:\
keyint=15:trell:mbd=2:precmp=2:subcmp=2:cmp=2:dia=-10:predia=-10:cbp:mv0:\
vqmin=1:lmin=1:dc=10:vstrict=0

14.8.4. Encoding Audio

VCD and SVCD support MPEG-1 layer II audio, using one of toolame, twolame, or libavcodec's MP2 encoder. The libavcodec MP2 is far from being as good as the other two libraries, however it should always be available to use. VCD only supports constant bitrate audio (CBR) whereas SVCD supports variable bitrate (VBR), too. Be careful when using VBR because some bad standalone players might not support it too well.

For DVD audio, libavcodec's AC-3 codec is used.
14.8.4.1. toolame

For VCD and SVCD:

-oac toolame -toolameopts br=224

14.8.4.2. twolame

For VCD and SVCD:

-oac twolame -twolameopts br=224

14.8.4.3. libavcodec

For DVD with 2 channel sound:

-oac lavc -lavcopts acodec=ac3:abitrate=192

For DVD with 5.1 channel sound:

-channels 6 -oac lavc -lavcopts acodec=ac3:abitrate=384

For VCD and SVCD:

-oac lavc -lavcopts acodec=mp2:abitrate=224

14.8.5. Putting it all Together

This section shows some complete commands for creating VCD/SVCD/DVD compliant videos.
14.8.5.1. PAL DVD

mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=dvd:tsaf \
  -vf scale=720:576,harddup -srate 48000 -af lavcresample=48000 \
  -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:\
keyint=15:vstrict=0:acodec=ac3:abitrate=192:aspect=16/9 -ofps 25 \
  -o movie.mpg movie.avi

14.8.5.2. NTSC DVD

mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=dvd:tsaf \
  -vf scale=720:480,harddup -srate 48000 -af lavcresample=48000 \
  -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:\
keyint=18:vstrict=0:acodec=ac3:abitrate=192:aspect=16/9 -ofps 30000/1001 \
  -o movie.mpg movie.avi

14.8.5.3. PAL AVI Containing AC-3 Audio to DVD

If the source already has AC-3 audio, use -oac copy instead of re-encoding it.

mencoder -oac copy -ovc lavc -of mpeg -mpegopts format=dvd:tsaf \
  -vf scale=720:576,harddup -ofps 25 \
  -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:\
keyint=15:vstrict=0:aspect=16/9 -o movie.mpg movie.avi

14.8.5.4. NTSC AVI Containing AC-3 Audio to DVD

If the source already has AC-3 audio, and is NTSC @ 24000/1001 fps:

mencoder -oac copy -ovc lavc -of mpeg -mpegopts format=dvd:tsaf:telecine \
  -vf scale=720:480,harddup -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:\
  vrc_maxrate=9800:vbitrate=5000:keyint=15:vstrict=0:aspect=16/9 -ofps 24000/1001 \
  -o movie.mpg movie.avi

14.8.5.5. PAL SVCD

mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xsvcd -vf \
    scale=480:576,harddup -srate 44100 -af lavcresample=44100 -lavcopts \
    vcodec=mpeg2video:mbd=2:keyint=15:vrc_buf_size=917:vrc_minrate=600:\
vbitrate=2500:vrc_maxrate=2500:acodec=mp2:abitrate=224 -ofps 25 \
    -o movie.mpg movie.avi

14.8.5.6. NTSC SVCD

mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xsvcd  -vf \
    scale=480:480,harddup -srate 44100 -af lavcresample=44100 -lavcopts \
    vcodec=mpeg2video:mbd=2:keyint=18:vrc_buf_size=917:vrc_minrate=600:\
vbitrate=2500:vrc_maxrate=2500:acodec=mp2:abitrate=224 -ofps 30000/1001 \
    -o movie.mpg movie.avi

14.8.5.7. PAL VCD

mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xvcd -vf \
    scale=352:288,harddup -srate 44100 -af lavcresample=44100 -lavcopts \
    vcodec=mpeg1video:keyint=15:vrc_buf_size=327:vrc_minrate=1152:\
vbitrate=1152:vrc_maxrate=1152:acodec=mp2:abitrate=224 -ofps 25 \
    -o movie.mpg movie.avi

14.8.5.8. NTSC VCD

mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xvcd -vf \
    scale=352:240,harddup -srate 44100 -af lavcresample=44100 -lavcopts \
    vcodec=mpeg1video:keyint=18:vrc_buf_size=327:vrc_minrate=1152:\
vbitrate=1152:vrc_maxrate=1152:acodec=mp2:abitrate=224 -ofps 30000/1001 \
    -o movie.mpg movie.avi
###################
