#!/usr/bin/perl
#2012_11_29   星期四   add by greshem
#
#4. 使用多个keys进行sort
#要以多个keys来sort，将所有以or连接起来的比较操作，放在一个子函数里即可。将主要的比较操作放在前面，次要的放在后面。
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
# 打印结果是：
# 600000 45     Bill Gates
# 600000 41     Steve Ballmer
# 55000   29     Sally Developer
# 55000   29     George Tester
# 55000   29     Joe Tester
# 上述code看起来很复杂，实际上很容易理解哦。@employees数组的元素是匿名hash。匿名hash实际上是个引用，可使用->;操作符来访问其值，例如$employees[0]->;{SALARY}可访问到第一个匿名hash里SALARY对应的值。所以上述各项比较就很清楚了，先比较SALARY的值，再比较AGE的值，再比较LAST的值，最后比较FIRST的值。注意前2项比较是降序的，后2项是升序的，不要搞混了哦。
# #
