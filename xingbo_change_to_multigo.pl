#!/usr/bin/perl
#my $file="2013-11-27_20-16-02_������ʤ_������19k_Ǯ�ȳ�20k_9979070.txt";
for (glob("./2014*.txt"))
{
	print "Deal with $_ \n";
	deal_with_one_file($_);
}

sub deal_with_one_file()
{
	#my $file=shift or die("Usage: $0  input_file \n");
	(my $file)=@_;

	open(FILE, $file) or die("usage: open $file error \n");
	our $OUTPUT;
	open(OUTPUT, ">".$file.".sgf")  or die("Error:  create  $file error \n");

	select(OUTPUT);

	for(<FILE>)
	{
		if($_=~/Ǯ�ȳ�/)
		{
			print_header($_);
		}
		else
		{
			tranform_W_B($_);
		}
	}

	select(STDOUT);
}
#print ";)\n";


#9979070|������ϰ���ȳ�5��Ϊʤ|2013-11-27 20:16:02|������ʤ|������[19k]|Ǯ�ȳ�[20k]|1 |��|��
#14342504|���ȣ�����7.5Ŀ|2014-07-27 19:51:48|������ʤ|�����[3k]|Ǯ�ȳ�[4k]|0 |������|��
#EV: event  tournament name  �������� 
sub print_header()
{
	
	if($_=~/(.*?)\|(.*?)\|(.*?)\|(.*?)\|(.*?)\|(.*?)\|(.*?)\|.*/)
	{
		my $id=$1;
		my $aim=$2;
		my $date=$3;
		my $result=$4;

		my $black=$5;
		my $white=$6;	
		$black=~s/\[/_/g;
		$black=~s/\]/_/g;
		$white=~s/\[/_/g;
		$white=~s/\]/_/g;


	print <<EOF
(;SZ[19]
EV[]
DT[$date]
PW[$white]
WR[$white]
PB[$black]
BR[$black]
KM[$aim]
RE[$result];

EOF
;
	}
}

sub tranform_W_B($)
{
	(my $string)=@_;;
	#my $string="b[gg];w[gh];b[hh];w[hg];b[jg];w[hf];b[gf];w[he];b[ge];w[jh];b[hj];w[kg];b[jf];w[je];b[kf];w[lf];b[kh];w[ke];b[jj];w[jg];b[fh];w[kj];b[lh];w[lj];b[mh];w[mj];b[nj];w[nk];b[mk];w[nh];b[lk];w[mg];b[gj];w[nj];b[kk];w[lg];";

	#print $string."\n";
	$string=lc($string);;
	$string=~s/b\[/B\[/g;
	$string=~s/w\[/W\[/g;
	$string=~s/;/;\n/g;
	
	#$string=xingbo_algo_change($string);
	$string=xingbo_algo_change_19($string);
	print $string."\n";
	return $string;

}

#���������������.
#	xingbo_algo_sed.pl 
sub xingbo_algo_change_19()
{
	(my $input_string)=@_;

$input_string=~s/aa/aa/g;
$input_string=~s/ab/ab/g;
$input_string=~s/ac/ac/g;
$input_string=~s/ad/ad/g;
$input_string=~s/ae/ae/g;
$input_string=~s/af/af/g;
$input_string=~s/ag/ag/g;
$input_string=~s/ah/ah/g;
$input_string=~s/aj/ai/g;
$input_string=~s/ak/aj/g;
$input_string=~s/al/ak/g;
$input_string=~s/am/al/g;
$input_string=~s/an/am/g;
$input_string=~s/ao/an/g;
$input_string=~s/ap/ao/g;
$input_string=~s/aq/ap/g;
$input_string=~s/ar/aq/g;
$input_string=~s/as/ar/g;
$input_string=~s/at/as/g;
$input_string=~s/au/at/g;
$input_string=~s/ba/ba/g;
$input_string=~s/bb/bb/g;
$input_string=~s/bc/bc/g;
$input_string=~s/bd/bd/g;
$input_string=~s/be/be/g;
$input_string=~s/bf/bf/g;
$input_string=~s/bg/bg/g;
$input_string=~s/bh/bh/g;
$input_string=~s/bj/bi/g;
$input_string=~s/bk/bj/g;
$input_string=~s/bl/bk/g;
$input_string=~s/bm/bl/g;
$input_string=~s/bn/bm/g;
$input_string=~s/bo/bn/g;
$input_string=~s/bp/bo/g;
$input_string=~s/bq/bp/g;
$input_string=~s/br/bq/g;
$input_string=~s/bs/br/g;
$input_string=~s/bt/bs/g;
$input_string=~s/bu/bt/g;
$input_string=~s/ca/ca/g;
$input_string=~s/cb/cb/g;
$input_string=~s/cc/cc/g;
$input_string=~s/cd/cd/g;
$input_string=~s/ce/ce/g;
$input_string=~s/cf/cf/g;
$input_string=~s/cg/cg/g;
$input_string=~s/ch/ch/g;
$input_string=~s/cj/ci/g;
$input_string=~s/ck/cj/g;
$input_string=~s/cl/ck/g;
$input_string=~s/cm/cl/g;
$input_string=~s/cn/cm/g;
$input_string=~s/co/cn/g;
$input_string=~s/cp/co/g;
$input_string=~s/cq/cp/g;
$input_string=~s/cr/cq/g;
$input_string=~s/cs/cr/g;
$input_string=~s/ct/cs/g;
$input_string=~s/cu/ct/g;
$input_string=~s/da/da/g;
$input_string=~s/db/db/g;
$input_string=~s/dc/dc/g;
$input_string=~s/dd/dd/g;
$input_string=~s/de/de/g;
$input_string=~s/df/df/g;
$input_string=~s/dg/dg/g;
$input_string=~s/dh/dh/g;
$input_string=~s/dj/di/g;
$input_string=~s/dk/dj/g;
$input_string=~s/dl/dk/g;
$input_string=~s/dm/dl/g;
$input_string=~s/dn/dm/g;
$input_string=~s/do/dn/g;
$input_string=~s/dp/do/g;
$input_string=~s/dq/dp/g;
$input_string=~s/dr/dq/g;
$input_string=~s/ds/dr/g;
$input_string=~s/dt/ds/g;
$input_string=~s/du/dt/g;
$input_string=~s/ea/ea/g;
$input_string=~s/eb/eb/g;
$input_string=~s/ec/ec/g;
$input_string=~s/ed/ed/g;
$input_string=~s/ee/ee/g;
$input_string=~s/ef/ef/g;
$input_string=~s/eg/eg/g;
$input_string=~s/eh/eh/g;
$input_string=~s/ej/ei/g;
$input_string=~s/ek/ej/g;
$input_string=~s/el/ek/g;
$input_string=~s/em/el/g;
$input_string=~s/en/em/g;
$input_string=~s/eo/en/g;
$input_string=~s/ep/eo/g;
$input_string=~s/eq/ep/g;
$input_string=~s/er/eq/g;
$input_string=~s/es/er/g;
$input_string=~s/et/es/g;
$input_string=~s/eu/et/g;
$input_string=~s/fa/fa/g;
$input_string=~s/fb/fb/g;
$input_string=~s/fc/fc/g;
$input_string=~s/fd/fd/g;
$input_string=~s/fe/fe/g;
$input_string=~s/ff/ff/g;
$input_string=~s/fg/fg/g;
$input_string=~s/fh/fh/g;
$input_string=~s/fj/fi/g;
$input_string=~s/fk/fj/g;
$input_string=~s/fl/fk/g;
$input_string=~s/fm/fl/g;
$input_string=~s/fn/fm/g;
$input_string=~s/fo/fn/g;
$input_string=~s/fp/fo/g;
$input_string=~s/fq/fp/g;
$input_string=~s/fr/fq/g;
$input_string=~s/fs/fr/g;
$input_string=~s/ft/fs/g;
$input_string=~s/fu/ft/g;
$input_string=~s/ga/ga/g;
$input_string=~s/gb/gb/g;
$input_string=~s/gc/gc/g;
$input_string=~s/gd/gd/g;
$input_string=~s/ge/ge/g;
$input_string=~s/gf/gf/g;
$input_string=~s/gg/gg/g;
$input_string=~s/gh/gh/g;
$input_string=~s/gj/gi/g;
$input_string=~s/gk/gj/g;
$input_string=~s/gl/gk/g;
$input_string=~s/gm/gl/g;
$input_string=~s/gn/gm/g;
$input_string=~s/go/gn/g;
$input_string=~s/gp/go/g;
$input_string=~s/gq/gp/g;
$input_string=~s/gr/gq/g;
$input_string=~s/gs/gr/g;
$input_string=~s/gt/gs/g;
$input_string=~s/gu/gt/g;
$input_string=~s/ha/ha/g;
$input_string=~s/hb/hb/g;
$input_string=~s/hc/hc/g;
$input_string=~s/hd/hd/g;
$input_string=~s/he/he/g;
$input_string=~s/hf/hf/g;
$input_string=~s/hg/hg/g;
$input_string=~s/hh/hh/g;
$input_string=~s/hj/hi/g;
$input_string=~s/hk/hj/g;
$input_string=~s/hl/hk/g;
$input_string=~s/hm/hl/g;
$input_string=~s/hn/hm/g;
$input_string=~s/ho/hn/g;
$input_string=~s/hp/ho/g;
$input_string=~s/hq/hp/g;
$input_string=~s/hr/hq/g;
$input_string=~s/hs/hr/g;
$input_string=~s/ht/hs/g;
$input_string=~s/hu/ht/g;
$input_string=~s/ja/ia/g;
$input_string=~s/jb/ib/g;
$input_string=~s/jc/ic/g;
$input_string=~s/jd/id/g;
$input_string=~s/je/ie/g;
$input_string=~s/jf/if/g;
$input_string=~s/jg/ig/g;
$input_string=~s/jh/ih/g;
$input_string=~s/jj/ii/g;
$input_string=~s/jk/ij/g;
$input_string=~s/jl/ik/g;
$input_string=~s/jm/il/g;
$input_string=~s/jn/im/g;
$input_string=~s/jo/in/g;
$input_string=~s/jp/io/g;
$input_string=~s/jq/ip/g;
$input_string=~s/jr/iq/g;
$input_string=~s/js/ir/g;
$input_string=~s/jt/is/g;
$input_string=~s/ju/it/g;
$input_string=~s/ka/ja/g;
$input_string=~s/kb/jb/g;
$input_string=~s/kc/jc/g;
$input_string=~s/kd/jd/g;
$input_string=~s/ke/je/g;
$input_string=~s/kf/jf/g;
$input_string=~s/kg/jg/g;
$input_string=~s/kh/jh/g;
$input_string=~s/kj/ji/g;
$input_string=~s/kk/jj/g;
$input_string=~s/kl/jk/g;
$input_string=~s/km/jl/g;
$input_string=~s/kn/jm/g;
$input_string=~s/ko/jn/g;
$input_string=~s/kp/jo/g;
$input_string=~s/kq/jp/g;
$input_string=~s/kr/jq/g;
$input_string=~s/ks/jr/g;
$input_string=~s/kt/js/g;
$input_string=~s/ku/jt/g;
$input_string=~s/la/ka/g;
$input_string=~s/lb/kb/g;
$input_string=~s/lc/kc/g;
$input_string=~s/ld/kd/g;
$input_string=~s/le/ke/g;
$input_string=~s/lf/kf/g;
$input_string=~s/lg/kg/g;
$input_string=~s/lh/kh/g;
$input_string=~s/lj/ki/g;
$input_string=~s/lk/kj/g;
$input_string=~s/ll/kk/g;
$input_string=~s/lm/kl/g;
$input_string=~s/ln/km/g;
$input_string=~s/lo/kn/g;
$input_string=~s/lp/ko/g;
$input_string=~s/lq/kp/g;
$input_string=~s/lr/kq/g;
$input_string=~s/ls/kr/g;
$input_string=~s/lt/ks/g;
$input_string=~s/lu/kt/g;
$input_string=~s/ma/la/g;
$input_string=~s/mb/lb/g;
$input_string=~s/mc/lc/g;
$input_string=~s/md/ld/g;
$input_string=~s/me/le/g;
$input_string=~s/mf/lf/g;
$input_string=~s/mg/lg/g;
$input_string=~s/mh/lh/g;
$input_string=~s/mj/li/g;
$input_string=~s/mk/lj/g;
$input_string=~s/ml/lk/g;
$input_string=~s/mm/ll/g;
$input_string=~s/mn/lm/g;
$input_string=~s/mo/ln/g;
$input_string=~s/mp/lo/g;
$input_string=~s/mq/lp/g;
$input_string=~s/mr/lq/g;
$input_string=~s/ms/lr/g;
$input_string=~s/mt/ls/g;
$input_string=~s/mu/lt/g;
$input_string=~s/na/ma/g;
$input_string=~s/nb/mb/g;
$input_string=~s/nc/mc/g;
$input_string=~s/nd/md/g;
$input_string=~s/ne/me/g;
$input_string=~s/nf/mf/g;
$input_string=~s/ng/mg/g;
$input_string=~s/nh/mh/g;
$input_string=~s/nj/mi/g;
$input_string=~s/nk/mj/g;
$input_string=~s/nl/mk/g;
$input_string=~s/nm/ml/g;
$input_string=~s/nn/mm/g;
$input_string=~s/no/mn/g;
$input_string=~s/np/mo/g;
$input_string=~s/nq/mp/g;
$input_string=~s/nr/mq/g;
$input_string=~s/ns/mr/g;
$input_string=~s/nt/ms/g;
$input_string=~s/nu/mt/g;
$input_string=~s/oa/na/g;
$input_string=~s/ob/nb/g;
$input_string=~s/oc/nc/g;
$input_string=~s/od/nd/g;
$input_string=~s/oe/ne/g;
$input_string=~s/of/nf/g;
$input_string=~s/og/ng/g;
$input_string=~s/oh/nh/g;
$input_string=~s/oj/ni/g;
$input_string=~s/ok/nj/g;
$input_string=~s/ol/nk/g;
$input_string=~s/om/nl/g;
$input_string=~s/on/nm/g;
$input_string=~s/oo/nn/g;
$input_string=~s/op/no/g;
$input_string=~s/oq/np/g;
$input_string=~s/or/nq/g;
$input_string=~s/os/nr/g;
$input_string=~s/ot/ns/g;
$input_string=~s/ou/nt/g;
$input_string=~s/pa/oa/g;
$input_string=~s/pb/ob/g;
$input_string=~s/pc/oc/g;
$input_string=~s/pd/od/g;
$input_string=~s/pe/oe/g;
$input_string=~s/pf/of/g;
$input_string=~s/pg/og/g;
$input_string=~s/ph/oh/g;
$input_string=~s/pj/oi/g;
$input_string=~s/pk/oj/g;
$input_string=~s/pl/ok/g;
$input_string=~s/pm/ol/g;
$input_string=~s/pn/om/g;
$input_string=~s/po/on/g;
$input_string=~s/pp/oo/g;
$input_string=~s/pq/op/g;
$input_string=~s/pr/oq/g;
$input_string=~s/ps/or/g;
$input_string=~s/pt/os/g;
$input_string=~s/pu/ot/g;
$input_string=~s/qa/pa/g;
$input_string=~s/qb/pb/g;
$input_string=~s/qc/pc/g;
$input_string=~s/qd/pd/g;
$input_string=~s/qe/pe/g;
$input_string=~s/qf/pf/g;
$input_string=~s/qg/pg/g;
$input_string=~s/qh/ph/g;
$input_string=~s/qj/pi/g;
$input_string=~s/qk/pj/g;
$input_string=~s/ql/pk/g;
$input_string=~s/qm/pl/g;
$input_string=~s/qn/pm/g;
$input_string=~s/qo/pn/g;
$input_string=~s/qp/po/g;
$input_string=~s/qq/pp/g;
$input_string=~s/qr/pq/g;
$input_string=~s/qs/pr/g;
$input_string=~s/qt/ps/g;
$input_string=~s/qu/pt/g;
$input_string=~s/ra/qa/g;
$input_string=~s/rb/qb/g;
$input_string=~s/rc/qc/g;
$input_string=~s/rd/qd/g;
$input_string=~s/re/qe/g;
$input_string=~s/rf/qf/g;
$input_string=~s/rg/qg/g;
$input_string=~s/rh/qh/g;
$input_string=~s/rj/qi/g;
$input_string=~s/rk/qj/g;
$input_string=~s/rl/qk/g;
$input_string=~s/rm/ql/g;
$input_string=~s/rn/qm/g;
$input_string=~s/ro/qn/g;
$input_string=~s/rp/qo/g;
$input_string=~s/rq/qp/g;
$input_string=~s/rr/qq/g;
$input_string=~s/rs/qr/g;
$input_string=~s/rt/qs/g;
$input_string=~s/ru/qt/g;
$input_string=~s/sa/ra/g;
$input_string=~s/sb/rb/g;
$input_string=~s/sc/rc/g;
$input_string=~s/sd/rd/g;
$input_string=~s/se/re/g;
$input_string=~s/sf/rf/g;
$input_string=~s/sg/rg/g;
$input_string=~s/sh/rh/g;
$input_string=~s/sj/ri/g;
$input_string=~s/sk/rj/g;
$input_string=~s/sl/rk/g;
$input_string=~s/sm/rl/g;
$input_string=~s/sn/rm/g;
$input_string=~s/so/rn/g;
$input_string=~s/sp/ro/g;
$input_string=~s/sq/rp/g;
$input_string=~s/sr/rq/g;
$input_string=~s/ss/rr/g;
$input_string=~s/st/rs/g;
$input_string=~s/su/rt/g;
$input_string=~s/ta/sa/g;
$input_string=~s/tb/sb/g;
$input_string=~s/tc/sc/g;
$input_string=~s/td/sd/g;
$input_string=~s/te/se/g;
$input_string=~s/tf/sf/g;
$input_string=~s/tg/sg/g;
$input_string=~s/th/sh/g;
$input_string=~s/tj/si/g;
$input_string=~s/tk/sj/g;
$input_string=~s/tl/sk/g;
$input_string=~s/tm/sl/g;
$input_string=~s/tn/sm/g;
$input_string=~s/to/sn/g;
$input_string=~s/tp/so/g;
$input_string=~s/tq/sp/g;
$input_string=~s/tr/sq/g;
$input_string=~s/ts/sr/g;
$input_string=~s/tt/ss/g;
$input_string=~s/tu/st/g;
$input_string=~s/ua/ta/g;
$input_string=~s/ub/tb/g;
$input_string=~s/uc/tc/g;
$input_string=~s/ud/td/g;
$input_string=~s/ue/te/g;
$input_string=~s/uf/tf/g;
$input_string=~s/ug/tg/g;
$input_string=~s/uh/th/g;
$input_string=~s/uj/ti/g;
$input_string=~s/uk/tj/g;
$input_string=~s/ul/tk/g;
$input_string=~s/um/tl/g;
$input_string=~s/un/tm/g;
$input_string=~s/uo/tn/g;
$input_string=~s/up/to/g;
$input_string=~s/uq/tp/g;
$input_string=~s/ur/tq/g;
$input_string=~s/us/tr/g;
$input_string=~s/ut/ts/g;
$input_string=~s/uu/tt/g;

	return $input_string;
}
sub xingbo_algo_change()
{
	(my $input_string)=@_;
$input_string=~s/aa/aa/g;
$input_string=~s/ab/ab/g;
$input_string=~s/ac/ac/g;
$input_string=~s/ad/ad/g;
$input_string=~s/ae/ae/g;
$input_string=~s/af/af/g;
$input_string=~s/ag/ag/g;
$input_string=~s/ah/ah/g;
$input_string=~s/aj/ai/g;
$input_string=~s/ak/aj/g;
$input_string=~s/al/ak/g;
$input_string=~s/am/al/g;
$input_string=~s/an/am/g;
$input_string=~s/ba/ba/g;
$input_string=~s/bb/bb/g;
$input_string=~s/bc/bc/g;
$input_string=~s/bd/bd/g;
$input_string=~s/be/be/g;
$input_string=~s/bf/bf/g;
$input_string=~s/bg/bg/g;
$input_string=~s/bh/bh/g;
$input_string=~s/bj/bi/g;
$input_string=~s/bk/bj/g;
$input_string=~s/bl/bk/g;
$input_string=~s/bm/bl/g;
$input_string=~s/bn/bm/g;
$input_string=~s/ca/ca/g;
$input_string=~s/cb/cb/g;
$input_string=~s/cc/cc/g;
$input_string=~s/cd/cd/g;
$input_string=~s/ce/ce/g;
$input_string=~s/cf/cf/g;
$input_string=~s/cg/cg/g;
$input_string=~s/ch/ch/g;
$input_string=~s/cj/ci/g;
$input_string=~s/ck/cj/g;
$input_string=~s/cl/ck/g;
$input_string=~s/cm/cl/g;
$input_string=~s/cn/cm/g;
$input_string=~s/da/da/g;
$input_string=~s/db/db/g;
$input_string=~s/dc/dc/g;
$input_string=~s/dd/dd/g;
$input_string=~s/de/de/g;
$input_string=~s/df/df/g;
$input_string=~s/dg/dg/g;
$input_string=~s/dh/dh/g;
$input_string=~s/dj/di/g;
$input_string=~s/dk/dj/g;
$input_string=~s/dl/dk/g;
$input_string=~s/dm/dl/g;
$input_string=~s/dn/dm/g;
$input_string=~s/ea/ea/g;
$input_string=~s/eb/eb/g;
$input_string=~s/ec/ec/g;
$input_string=~s/ed/ed/g;
$input_string=~s/ee/ee/g;
$input_string=~s/ef/ef/g;
$input_string=~s/eg/eg/g;
$input_string=~s/eh/eh/g;
$input_string=~s/ej/ei/g;
$input_string=~s/ek/ej/g;
$input_string=~s/el/ek/g;
$input_string=~s/em/el/g;
$input_string=~s/en/em/g;
$input_string=~s/fa/fa/g;
$input_string=~s/fb/fb/g;
$input_string=~s/fc/fc/g;
$input_string=~s/fd/fd/g;
$input_string=~s/fe/fe/g;
$input_string=~s/ff/ff/g;
$input_string=~s/fg/fg/g;
$input_string=~s/fh/fh/g;
$input_string=~s/fj/fi/g;
$input_string=~s/fk/fj/g;
$input_string=~s/fl/fk/g;
$input_string=~s/fm/fl/g;
$input_string=~s/fn/fm/g;
$input_string=~s/ga/ga/g;
$input_string=~s/gb/gb/g;
$input_string=~s/gc/gc/g;
$input_string=~s/gd/gd/g;
$input_string=~s/ge/ge/g;
$input_string=~s/gf/gf/g;
$input_string=~s/gg/gg/g;
$input_string=~s/gh/gh/g;
$input_string=~s/gj/gi/g;
$input_string=~s/gk/gj/g;
$input_string=~s/gl/gk/g;
$input_string=~s/gm/gl/g;
$input_string=~s/gn/gm/g;
$input_string=~s/ha/ha/g;
$input_string=~s/hb/hb/g;
$input_string=~s/hc/hc/g;
$input_string=~s/hd/hd/g;
$input_string=~s/he/he/g;
$input_string=~s/hf/hf/g;
$input_string=~s/hg/hg/g;
$input_string=~s/hh/hh/g;
$input_string=~s/hj/hi/g;
$input_string=~s/hk/hj/g;
$input_string=~s/hl/hk/g;
$input_string=~s/hm/hl/g;
$input_string=~s/hn/hm/g;
$input_string=~s/ja/ia/g;
$input_string=~s/jb/ib/g;
$input_string=~s/jc/ic/g;
$input_string=~s/jd/id/g;
$input_string=~s/je/ie/g;
$input_string=~s/jf/if/g;
$input_string=~s/jg/ig/g;
$input_string=~s/jh/ih/g;
$input_string=~s/jj/ii/g;
$input_string=~s/jk/ij/g;
$input_string=~s/jl/ik/g;
$input_string=~s/jm/il/g;
$input_string=~s/jn/im/g;
$input_string=~s/ka/ja/g;
$input_string=~s/kb/jb/g;
$input_string=~s/kc/jc/g;
$input_string=~s/kd/jd/g;
$input_string=~s/ke/je/g;
$input_string=~s/kf/jf/g;
$input_string=~s/kg/jg/g;
$input_string=~s/kh/jh/g;
$input_string=~s/kj/ji/g;
$input_string=~s/kk/jj/g;
$input_string=~s/kl/jk/g;
$input_string=~s/km/jl/g;
$input_string=~s/kn/jm/g;
$input_string=~s/la/ka/g;
$input_string=~s/lb/kb/g;
$input_string=~s/lc/kc/g;
$input_string=~s/ld/kd/g;
$input_string=~s/le/ke/g;
$input_string=~s/lf/kf/g;
$input_string=~s/lg/kg/g;
$input_string=~s/lh/kh/g;
$input_string=~s/lj/ki/g;
$input_string=~s/lk/kj/g;
$input_string=~s/ll/kk/g;
$input_string=~s/lm/kl/g;
$input_string=~s/ln/km/g;
$input_string=~s/ma/la/g;
$input_string=~s/mb/lb/g;
$input_string=~s/mc/lc/g;
$input_string=~s/md/ld/g;
$input_string=~s/me/le/g;
$input_string=~s/mf/lf/g;
$input_string=~s/mg/lg/g;
$input_string=~s/mh/lh/g;
$input_string=~s/mj/li/g;
$input_string=~s/mk/lj/g;
$input_string=~s/ml/lk/g;
$input_string=~s/mm/ll/g;
$input_string=~s/mn/lm/g;
$input_string=~s/na/ma/g;
$input_string=~s/nb/mb/g;
$input_string=~s/nc/mc/g;
$input_string=~s/nd/md/g;
$input_string=~s/ne/me/g;
$input_string=~s/nf/mf/g;
$input_string=~s/ng/mg/g;
$input_string=~s/nh/mh/g;
$input_string=~s/nj/mi/g;
$input_string=~s/nk/mj/g;
$input_string=~s/nl/mk/g;
$input_string=~s/nm/ml/g;
$input_string=~s/nn/mm/g;
	return $input_string;
}
#@array=split(/;/, $string);

########################################################################
__DATA__
(;SZ[19]
EV[������ϰ���ȳ�3��Ϊʤ]
DT[2013-11-03 00:41:29]
PW[�첩]
WR[22k]
PB[Ǯ�ȳ�]
BR[24k]
KM[]
RE[������ʤ];
B[gg];
W[gh];
B[hh];
W[hg];
B[gf];
W[if];
B[hi];
W[fi];
B[ig];
W[hf];
B[jf];
W[id];
B[he];
W[ie];
B[ge];
W[je];
B[jh];
W[kf];
B[jg];
W[kd];
B[kg];
W[fg];
B[ff];
)

