
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
print "#睿森和旗旗差了    diff_to_qiqi= $diff_to_qiqi秒, ".($diff_to_qiqi/60/60/24)."天 ".($diff_to_qiqi/60/60/24/30)."月\n";

my $diff_to_eden= $reshem_birthtime- $eden_birthtime;
print "#睿森和钱奕程差了  diff_to_eden= $diff_to_eden秒, ".($diff_to_eden/60/60/24)."天 ".($diff_to_eden/60/60/24/30)."月".int($diff_to_eden/60/60/24/30/12)."年\n";

my  $time=time();
my  $time2=$time-$diff_to_qiqi;

print "#  旗旗和现在的睿森这么大应该在  ";
print  POSIX::strftime('%Y_%m_%d',localtime(time()-$diff_to_qiqi));
print "\n";

print "#今天  钱奕程和现在的睿森这么大应该在  ";
print  POSIX::strftime('%Y_%m_%d',localtime(time()-$diff_to_eden));
print "\n";

#==========================================================================
my $diff_ende_to_qiqi= $qiqi_birthtime -$eden_birthtime ;
print "#今天 程程和旗旗 差了  ".($diff_ende_to_qiqi/60/60/24/30/12)." 年 \n";
print "#今天 程程和旗旗这么大 在  ";
print  POSIX::strftime('%Y_%m_%d',localtime(time()-$diff_ende_to_qiqi));
print "\n";
