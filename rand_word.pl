#!/usr/bin/perl
use rand_word;
#2010_08_26_21:57:34 add by qzj
#���ǵ��� cpp ��rand_word ��ˬ�� ����д��һ���� 
#ʹ���� /root/PerlQzjLib/rand_word.pm
@b=rand_word_array(30);
print @b;

# sub rand_word_array()
# {
# 	($count)=@_;
# 	$ok=0;
# 	@array;	
# 	open(FILE, "/usr/share/dict/linux.words") or die("open file error\n");
# 	$filesize=(-s "/usr/share/dict/linux.words");
# 	seek(FILE, 0, 2);
# 	$length=tell(FILE);
# 	$filesize==$length or die("file size error\n");	
# 	while(($count-$ok)>0)
# 	{
# 
# 		$offset=int(rand($length));
# 		seek(FILE, $offset, 0);
# 		$a=<FILE>;
# 		#����a ���ַ��ᷢ�ضϡ� 
# 		$a=<FILE>;
# 		#�����$a �Ǻ������ġ� 
# 		$a=~s/-/_/g;
# 		$a=~s/'/_/g;
# 
# 		if(defined($a))
# 		{
# 			$ok++;
# 			push(@array, $a);
# 		}
# 		print $a;
# 	}
# 	close(FILE);
# 	return @array;
# }
