

use Encode;

	$to=encode("utf-8", decode("gb2312", " espeak -v zh Ǯ�ȳ��Ǹ�ɵ�� -w /tmp/60000.wav"));

 #espeak -vzh  Ǯ�ȳ��Ǹ�ɵ��   -w /tmp/60000.wav
system("$to");
