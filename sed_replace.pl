########################################################################
#2011_02_21_22:05:31 add by greshem
# �൱��sed Ҳ���� ��s/// ������  д��������һЩ.  
sub replace_option
  {
    my $str = shift;
    my $option = shift;
    my $value = shift;
    my $optionnew = $option;
    $optionnew =~ s/\\//;
	# ע�ⲻҪдд��  $str='s/bbb/aaa/g' ; ����ı�� ȥ�������� ˫����.  
    $str =~ s/^$option.*$/$optionnew = $value;/gm;
	
    return $str;
  }
