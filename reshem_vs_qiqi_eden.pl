
use Time::Local;
use POSIX qw(strftime);
#$time=timelocal($sec, $min, $hour, $mday, $mon, $year);
##$time=timegm($sec, $min, $hour, $mday, $mon, $year);
#
##$time=timelocal  (0, 0, 0, 30, 1 , 2013); 

my $reshem_birthtime= timelocal(0, 0, 0, 2, 7 , 2014); 
my $qiqi_birthtime  = timelocal(0, 0, 0, 24, 3 , 2013); #1356969600
my $eden_birthtime  = timelocal(0, 0, 0, 11, 1 , 2008);

my $diff_to_qiqi= $reshem_birthtime- $qiqi_birthtime;
print "#�ɭ���������    diff_to_qiqi= $diff_to_qiqi��, ".($diff_to_qiqi/60/60/24)."�� ".($diff_to_qiqi/60/60/24/30)."��\n";

my $diff_to_eden= $reshem_birthtime- $eden_birthtime;
print "#�ɭ��Ǯ�ȳ̲���  diff_to_eden= $diff_to_eden��, ".($diff_to_eden/60/60/24)."�� ".($diff_to_eden/60/60/24/30)."��".int($diff_to_eden/60/60/24/30/12)."��\n";

my  $time=time();
my  $time2=$time-$diff_to_qiqi;

print "#  ��������ڵ��ɭ��ô��Ӧ����  ";
print  POSIX::strftime('%Y_%m_%d',localtime(time()-$diff_to_qiqi));
print "\n";

print "#����  Ǯ�ȳ̺����ڵ��ɭ��ô��Ӧ����  ";
print  POSIX::strftime('%Y_%m_%d',localtime(time()-$diff_to_eden));
print "\n";

#==========================================================================
my $diff_ende_to_qiqi= $qiqi_birthtime -$eden_birthtime ;
print "#���� �̳̺����� ����  ".($diff_ende_to_qiqi/60/60/24/30/12)." �� \n";
print "#���� �̳̺�������ô�� ��  ";
print  POSIX::strftime('%Y_%m_%d',localtime(time()-$diff_ende_to_qiqi));
print "\n";
