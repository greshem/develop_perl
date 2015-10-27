#!/usr/bin/perl -w

##< month object >##

package Month;

  use strict;
  use POSIX qw (mktime strftime);

  sub new {
    my $type=shift;
    my $self={
      'year'         => shift,
      'month'        => shift,
      'show_year'    => shift,
      'monday_first' => shift,
      'topline'      => shift,
      'icolor'       => shift,
    };
    my $correctmonth=int(strftime('%m', localtime(mktime(0, 0, 0, 1, ($self->{'month'}-1), ($self->{'year'}-1900)))));
    my $correctyear=int(strftime('%Y', localtime(mktime(0, 0, 0, 1, ($self->{'month'}-1), ($self->{'year'}-1900)))));
    ($self->{'month'}, $self->{'year'})=($correctmonth, $correctyear);
    bless $self, $type;
    return($self);
  }

  sub days {
    my $self=shift;
    foreach($self->{'month'}) {
      /^(1|3|5|7|8|10|12)$/ && return(31);
      /^(4|6|9|11)$/ && return(30);
      /^2$/ && do {
        ($self->{'year'}%4!=0) && return(28);
        ($self->{'year'}%400==0) && return(29);
        ($self->{'year'}%100==0) && return(28);
        return(29);
      };
    }
    return(0);
  }

  sub draw {
    my $self=shift;
    my @confs=@_;
    my @lines='';
    my %colors=(
      'red'    => "\033[1m\033[31m",
      'green'  => "\033[1m\033[32m",
      'yellow' => "\033[1m\033[33m",
      'blue'   => "\033[1m\033[34m",
      'violet' => "\033[1m\033[35m",
      'cyan'   => "\033[1m\033[36m",
      'shiny'  => "\033[1m\033[37m",
      'bold'   => "\033[1m\033[38m",
      '-'      => "\033[m"
    );

    $lines[0]=strftime("%B".($self->{'show_year'} ? ' %Y':''), localtime(mktime(0, 0, 0, 1, ($self->{'month'}-1), ($self->{'year'}-1900))));
    foreach(0 .. int((length($self->{'topline'})-length($lines[0]))/2)-1) { $lines[0]=" ".$lines[0]; }
    foreach(length($lines[0]) .. length($self->{'topline'})-1) { $lines[0].=' '; }
    $lines[1]=$self->{'topline'};

    my $actline=2;
    my $actpos=strftime("%w", localtime(mktime(0, 0, 0, 1, ($self->{'month'}-1), ($self->{'year'}-1900))));
    ($self->{'monday_first'}) && ($actpos--);
    ($actpos<0) && ($actpos=6);
    ($actpos) && do { foreach(0 .. ($actpos-1)) { $lines[$actline].='   '; }; };

    foreach my $conf (@confs) { $conf->getdays($self->{'year'}, $self->{'month'}); }

    foreach my $day (1 .. $self->days()) {
      my $actcolor='';
      foreach my $conf (@confs) {
        foreach($conf->daycolor($day)) {
          /^0$/ && next;
          /^nocolor$/ && do { $actcolor='nocolor'; last; };
          $actcolor && do { $actcolor=$self->{'icolor'}; last; };
          $actcolor=$_;
        }
      }
      foreach($actcolor) {
        /^$/ && do { $lines[$actline].=($day<10 ? ' ':'').$day; last; };
        /^nocolor$/ && do { $lines[$actline].=($day<10 ? ' *':'**'); last; };
        $lines[$actline].=$colors{$_}.($day<10 ? ' ':'').$day.$colors{'-'};
      }
      if($actpos==6) { $actpos=0; $actline++; } else { $actpos++; $lines[$actline].=' '; }
    }
    $actpos || push(@lines, '');
    foreach(($actpos*3) .. length($self->{'topline'})-1) { $lines[$actline].=' '; }

    return(join("\n", @lines));
  }

###< conf object >###

package Conf;

  use strict;
  use POSIX qw (mktime strftime);

  sub new {
    my $type=shift;
    my $self={
      'start'     => shift || '',
      'length'    => shift || 28,
      'duration'  => shift || 4,
      'name'      => shift || 'Unknown',
      'color'     => lc(shift) || 'red',
      'days'      => ''
    };
    if($self->{'start'}!~/^[0-9]{8}$/) {
      my @localtime=localtime();
      if($self->{'start'}=~/^[0-1][0-9][0-3][0-9]$/) {
        $self->{'start'}=($localtime[5]+1900).$self->{'start'};
      } else {
        $self->{'start'}=($localtime[5]+1900).sprintf("%02d", $localtime[4]+1).sprintf("%02d", $localtime[3]);
      }
    }
    $self->{'color'}=~/^(nocolor|red|green|blue|yellow|violet|cyan|shiny|bold)$/ || ($self->{'color'}='red');
    $self->{'length'}=~/^[0-9]+$/ || do { $self->{'length'}=28; };
    $self->{'duration'}=~/^[0-9]+$/ || do { $self->{'duration'}=4; };
    bless $self, $type;
    return($self);
  }

  sub parsefile {
    my $self=shift;
    (my $filename=shift) || return(0);
    open(FILE, $filename) || return(0);
    while(<FILE>) {
      chomp;
      (/^#/ || /^$/) && next;
      /^start ([0-9]{8})$/ && do { $self->{'start'}=$1; next; };
      /^length ([0-9]+)$/ && do { $self->{'length'}=$1; next; };
      /^duration ([0-9]+)$/ && do { $self->{'duration'}=$1; next; };
      /^color (nocolor|red|green|blue|yellow|violet|cyan|shiny|bold)$/ && do { $self->{'color'}=$1; next; };
      /^name (.+)$/ && do { $self->{'name'}=$1; next; };
      print "File $filename, line $.: invalid line, ignoring\n";
    }
    close(FILE);
    int($self->{'duration'}) || do { print "Duration cannot be set to zero. Setting 4.\n"; $self->{'duration'}=4; };
    ($self->{'duration'}>=$self->{'length'}) && do { $self->{'duration'}=$self->{'length'}; };
    return(1);
  }

  sub parsestr {
    my $self=shift;
    (my $str=shift) || return(0);
    my $filename='';
    foreach(split(',', $str)) {
      /^(s|start)=([0-9]{4})$/ && do {
        my @localtime=localtime();
        $self->{'start'}=($localtime[5]+1900).$2;
        next;
      };
      /^(s|start)=([0-9]{8})$/ && do { $self->{'start'}=$2; next; };
      /^(l|length)=([0-9]+)$/ && do { $self->{'length'}=$2; next; };
      /^(d|duration)=([0-9]+)$/ && do { $self->{'duration'}=$2; next; };
      /^(c|color)=(nocolor|red|green|blue|yellow|violet|cyan|shiny|bold)$/ && do { $self->{'color'}=$2; next; };
      /^(n|name)=(.+)$/ && do { $self->{'name'}=$2; next; };
      /^(f|file)=(.+)$/ && do { $filename=$2; next; };
      print "Invalid parameter '$_' in menstruation configuration, ignoring\n";
    }
    int($self->{'duration'}) || do { print "Duration cannot be set to zero. Setting 4.\n"; $self->{'duration'}=4; };
    ($self->{'duration'}>=$self->{'length'}) && do { $self->{'duration'}=$self->{'length'}; };
    if($filename) {
      if(open(RC, ">$filename")) {
        foreach my $key ('start', 'length', 'duration', 'color', 'name') {
          print RC $key.' '.$self->{$key}."\n";
        }
        close(RC);
        print "Configuration for '".$self->{'name'}."' saved to $filename\n";
      } else {
        print "Cannot write to $filename, configuration has NOT been saved\n";
      }
    }
    return(1);
  }

  sub getdays {
    my $self=shift;
    my ($year, $month)=(shift, shift);
    $self->{'days'}='#';
    $self->{'start'}=~/^([0-9]{4})([0-9]{2})([0-9]{2})$/;
    my ($sy, $sm, $sd)=($1, $2, $3);

    my $month_first=mktime(0, 0, 0, 1, ($month-1), ($year-1900));
    my $month_next=mktime(0, 0, 0, 1, $month, ($year-1900));
    my $actday=mktime(0, 0, 0, $sd, ($sm-1), ($sy-1900));
    while($actday>=$month_first) { $actday-=24*3600*$self->{'length'}; }
    while(($actday+24*3600*$self->{'length'})<$month_first) { $actday+=24*3600*$self->{'length'}; }
    $self->{'start'}=strftime("%Y%m%d", localtime($actday));

    my ($i, $duration, $first, $onmonth)=(0, 0, 0, 0);
    while($actday<$month_next) {
      (!$onmonth) && ($actday>=$month_first) && do { $first=$i; $onmonth++; };
      ($duration<$self->{'duration'}) && ($actday>=$month_first) && ($self->{'days'}.=($i-$first+1).'#');
      $duration++; $i++;
      $actday+=24*3600;
      ($duration==$self->{'length'}) && ($duration=0);
    }
  }

  sub daycolor {
    my $self=shift;
    my $day=shift;
    $self->{'days'}=~/#$day#/ && return($self->{'color'});
    return(0);
  }

###< main program >###

package Main;

  use strict;

  my @localtime=localtime();
  my %config=(
    'show_type'         => '1',
    'year'              => ($localtime[5]+1900),
    'month'             => ($localtime[4]+1),
    'monday_first'      => 0,
    'topline'           => 'Su Mo Tu We Th Fr Sa',
    'month_delimiter_h' => "   ",
    'month_delimiter_v' => "\n",
    'nocolor'           => 0,
    'icolor'            => 'red',
    'quiet'             => 0
  );
  my @confs=();

  for(my $i=0; $i<=$#ARGV; $i++) {
    foreach($ARGV[$i]) {
      /^(-h|--help)$/ && &Main::usage;
      /^(-V|--version)$/ && &Main::version;
      /^-(3|1|y)$/ && do { 
        ($config{'show_type'} eq 'y') && ($1==1 || $1==3) && last;
        $config{'show_type'}=$1;
        ($1 eq 'y') && ($#ARGV>$i) && ($ARGV[$i+1]=~/^[0-9]+$/) && ($config{'year'}=$ARGV[++$i]);
        last;
      };
      /^(-q|--quiet)$/ && do { $config{'quiet'}=1; last; };
      /^(-m|--monday)$/ && do { $config{'monday_first'}=1; last; };
      /^(-n|--nocolor)$/ && do { $config{'nocolor'}=1; last; };
      /^(-i|--icolor)$/ && do {
        (($#ARGV>$i) && ($ARGV[++$i]=~/^(red|green|blue|yellow|violet|cyan|shiny|bold)$/)) || &Main::out("Invalid intersection color, see '-h' for more details");
        $config{'icolor'}=$ARGV[$i];
        last;
      };
      /^(-c|--config)$/ && do {
        ($#ARGV>$i) || &Main::out("Parameter '-c' must be followed with another one, see $0 '-h'");
        push(@confs, Conf->new());
        $confs[$#confs]->parsestr($ARGV[++$i]);
        last;
      };

      (-f $_ && -r $_) || &Main::out("File $_ is not readable");
      push(@confs, Conf->new());
      $confs[$#confs]->parsefile($_);
    }
  }

  ($#confs<0) && push(@confs, Conf->new());
  if($config{'nocolor'}) {
    foreach my $conf (@confs) { $conf->{'color'}='nocolor'; }
  }

  if(!$config{'quiet'}) {
    if($#confs) {
      foreach my $conf (@confs) {
        print "Configuration name: ".$conf->{'name'}.", color: ".$conf->{'color'}."\n";
      }
      print "Intersection color: ".$config{'icolor'}."\n\n";
    } elsif($confs[0]->{'name'} ne 'Unknown') {
      print "Calendar for ".$confs[0]->{'name'}."\n\n";
    }
  }
  
  my @locales=split("\n", `locale -c LC_TIME`);
  if(($#locales>=1) && length($locales[1])) {
    $config{'topline'}='';
    foreach my $day (split(';', $locales[1])) { 
      $config{'topline'}.=sprintf("% 2s ", substr($day, 0, 2));
    }
    $config{'topline'}=~s/ +$//;
  }
  $config{'topline'}=~s/;/ /g;
  $config{'monday_first'} && $config{'topline'}=~s/^(..) (.+)$/$2 $1/;

  $config{'show_type'}=~/^(1|3|y)$/ || ($config{'show_type'}='1');
  $config{'year'}<1900 && &Main::out("Sorry, perl function localtime cannot work with years before 1900\nIf it can, please let me know at mccohy\@kyberdigi.cz");

  foreach($config{'show_type'}) {
    /^1$/ && do {
      my $month=Month->new($config{'year'}, $config{'month'}, 'show year', $config{'monday_first'}, $config{'topline'}, $config{'icolor'});
      print $month->draw(@confs)."\n";
    };
    /^3$/ && do {
      my @lines;
      foreach my $m ($config{'month'}-1 .. $config{'month'}+1) {
        my $month=Month->new($config{'year'}, $m, 'show year', $config{'monday_first'}, $config{'topline'}, $config{'icolor'});
        my @monthlines=split("\n", $month->draw(@confs));
        foreach my $i (0 .. 7) {
          if($i<=$#monthlines) { 
            $lines[$i].=$monthlines[$i].$config{'month_delimiter_h'}; 
          } else {
            foreach(1 .. length($config{'topline'})) { $lines[$i].=' '; }
            $lines[$i].=$config{'month_delimiter_h'};
          }
        }
      }
      print join("\n", @lines)."\n";
    };
    /^y$/ && do {
      my @lines;
      foreach(0 .. int((length($config{'topline'})*3+length($config{'month_delimiter_h'})*2-length($config{'year'}))/2)) { $lines[0].=' '; }
      $lines[0].=$config{'year'};
      $lines[1]='';
      foreach my $i (0 .. 3) {
        foreach(0 .. 7) { push @lines, ''; }
        foreach my $j (1 .. 3) {
          my $month=Month->new($config{'year'}, ($i*3+$j), 0, $config{'monday_first'}, $config{'topline'}, $config{'icolor'});
          my @monthlines=split("\n", $month->draw(@confs));
          foreach my $k (0 .. 7) {
            if($k<=$#monthlines) { 
              $lines[2+$i*8+$k].=$monthlines[$k].$config{'month_delimiter_h'}; 
            } else {
              foreach(1 .. length($config{'topline'})) { $lines[2+$i*8+$k].=' '; }
              $lines[2+$i*8+$k].=$config{'month_delimiter_h'};
            }
          }
        }
        $lines[$#lines].=$config{'month_delimiter_v'};
      }
      print join("\n", @lines)."\n";
    };
  }

  ###< subs >###

  sub Main::out {
    my $msg=shift || '';
    $msg && print $msg."\n";
    exit;
  }

  sub Main::version {
    print 
      "Menstruation calendar 2.1\n".
      "(C) 2002 C. McCohy <mccohy\@kyberdigi.cz>\n".
      "http://mencal.kyberdigi.cz/\n";
    exit;
  }

  sub Main::usage {
    print
      "Menstruation calendar 2.1\n".
      "Usage: mencal [options] [file1 file2 ... -c CONF1 -c CONF2 ...]\n".
      "Display options (only one from 1,3,y can be set):\n".
      "  -m, --monday        draw monday as first weekday (sunday is default)\n".
      "  -1                  actual month (default)\n".
      "  -3                  previous, current and next month\n".
      "  -y [YYYY]           all-year calendar (default YYYY is current year)\n".
      "  -q, --quiet         no top information will be printed\n".
      "  -n, --nocolor       noncolored output\n".
      "  -i, --icolor COLOR  intersection color (default red)\n".
      "    available colors: red, green, blue, yellow, violet, cyan, shiny, bold\n".
      "\n".
      "Menstruation configuration:\n".
      "  -c, --config   s=[YYYY]MMDD,l=LL,d=DD,n=NAME,f=FILE,c=COLOR\n\n".
      "  The second argument is a comma separated list of options. No spaces are\n".
      "  allowed in this list. If no name is specified, 'Unknown' is used.\n".
      "  Various -c options or filenames can be set.\n".
      "\n".
      "    s,start=[YYYY]MMDD  start day of period (default current day)\n".
      "    l,length=LL         length of period in days (default 28)\n".
      "    d,duration=D        duration of menstruation in days (default 4)\n".
      "    n,name=NAME         name of subject\n".
      "    f,file=FILE         filename to save configuration to\n".
      "      only menstruation related variables will be saved\n".
      "    c,color=COLOR       color used for menstruation days of subject\n".
      "      available colors: red, green, blue, yellow, violet, cyan, shiny, bold\n".
      "      default color is red, with '-n' switch color settings are ignored\n".
      "\n".
      "Info options:\n".
      "  -h, --help     print this help\n".
      "  -V, --version  print version information\n".
      "\n".
      "(C) 2002 C. McCohy <mccohy\@kyberdigi.cz>\n".
      "http://mencal.kyberdigi.cz/\n";
    exit;
  }

