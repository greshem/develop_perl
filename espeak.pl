

use Encode;

	$to=encode("utf-8", decode("gb2312", " espeak -v zh 钱奕程是个傻瓜 -w /tmp/60000.wav"));

 #espeak -vzh  钱奕程是个傻瓜   -w /tmp/60000.wav
system("$to");
