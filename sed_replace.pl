########################################################################
#2011_02_21_22:05:31 add by greshem
# 相当于sed 也就是 把s/// 操作符  写的明白了一些.  
sub replace_option
  {
    my $str = shift;
    my $option = shift;
    my $value = shift;
    my $optionnew = $option;
    $optionnew =~ s/\\//;
	# 注意不要写写成  $str='s/bbb/aaa/g' ; 不会改变的 去掉单引号 双引号.  
    $str =~ s/^$option.*$/$optionnew = $value;/gm;
	
    return $str;
  }
