#!/usr/bin/perl
#2012_11_29   ������   add by greshem
#
#4. ʹ�ö��keys����sort
#Ҫ�Զ��keys��sort����������or���������ıȽϲ���������һ���Ӻ����Ｔ�ɡ�����Ҫ�ıȽϲ�������ǰ�棬��Ҫ�ķ��ں��档
# An array of references to anonymous hashes
@employees = ( 
{ FIRST => 'Bill',   LAST => 'Gates',    SALARY => 600000, AGE => 45 },
{ FIRST => 'George', LAST => 'Tester' ,  SALARY => 55000, AGE => 29 },
{ FIRST => 'Steve', LAST => 'Ballmer',   SALARY => 600000, AGE => 41 },
{ FIRST => 'Sally', LAST => 'Developer', SALARY => 55000, AGE => 29 },
{ FIRST => 'Joe',   LAST => 'Tester',    SALARY => 55000, AGE => 29 },
);
sub seniority {
  $b->{SALARY}   <=> $a->{SALARY}
  or $b->{AGE}   <=> $a->{AGE}
  or $a->{LAST}   cmp $b->{LAST}
  or $a->{FIRST}   cmp $b->{FIRST}
}
@ranked = sort seniority @employees;
foreach $emp (@ranked) {
  print "$emp->{SALARY}\t$emp->{AGE}\t$emp->{FIRST}  $emp->{LAST}\n";
}
# ��ӡ����ǣ�
# 600000 45     Bill Gates
# 600000 41     Steve Ballmer
# 55000   29     Sally Developer
# 55000   29     George Tester
# 55000   29     Joe Tester
# ����code�������ܸ��ӣ�ʵ���Ϻ��������Ŷ��@employees�����Ԫ��������hash������hashʵ�����Ǹ����ã���ʹ��->;��������������ֵ������$employees[0]->;{SALARY}�ɷ��ʵ���һ������hash��SALARY��Ӧ��ֵ��������������ȽϾͺ�����ˣ��ȱȽ�SALARY��ֵ���ٱȽ�AGE��ֵ���ٱȽ�LAST��ֵ�����Ƚ�FIRST��ֵ��ע��ǰ2��Ƚ��ǽ���ģ���2��������ģ���Ҫ�����Ŷ��
# #
