#!/usr/bin/perl -w
use strict;
BEGIN{
  $0 = "crond";
  
  require 5;
  use Fcntl;
  use File::Basename;
  use File::Spec;
  use Getopt::Std;
  use POSIX ();
  use Symbol; #Support pre 5.6; they don't auto-vivify on open
  
  $Mail::Sendmail::VERSION = $Mail::Send::VERSION = 0;
  eval 'use Mail::Send';
  eval 'use Mail::Sendmail'  if $@ || ! $Mail::Send::VERSION;
}
my($pid, %EXPLODECACHE, %OPT, $VERSION);
$VERSION = 0.82;

#Get config/options
{
  my @defbug;
  %ENV = (
          CRONDAEMON=>1,                #!-X
          CRONDEBUG =>0,                #!-x
          CRONEMBED =>0,                #!-O
          CRONLOG   =>'/var/log/cron/', # -L
          CRONMAIL  =>1,                #!-M; extend this to MAILTO?!
          CRONONCE  =>0,                #!-1
          CRONSERIAL=>0,                #!-s
	  CRONSOGGY =>0,                #!-S
          CRONUNSAFE=>0,                #!-U
          HOME      =>'/',
          LOGNAME   =>'',
          MAILTO    =>'',
          PATH      =>$ENV{PATH},
          SHELL     =>'/bin/sh'
         );
  if( -r '/etc/default/cron' && open(DEFAULT, '/etc/default/cron') ){
    my(%default, %verboseOPT);
    %verboseOPT = (
                   CRONDAEMON=>'X',
                   CRONDEBUG =>'x',
                   CRONEMBED =>'O',
                   CRONLOG   =>'L',
                   CRONMAIL  =>'M',
                   CRONONCE  =>'1',
                   CRONSERIAL=>'s',
                   CRONUNSAFE=>'U'
                  );
    while(<DEFAULT>){
      chomp();
      next if /^\s*(?:\#|$)/;
      if( /^\s*([^\s]*?)\s*=\s*(.*)/ ){
        push(@defbug, "DEBUG2 (Setting envar $1 => $2) ");
        $default{uc($1)} = $2; next;
      }
    }
    %ENV = (%ENV, %default);
    foreach my $var ( grep {/^CRON/ } keys %ENV ){
      $ENV{$var} = 1 if lc($ENV{$var}) eq 'yes';
      $ENV{$var} = 0 if lc($ENV{$var}) eq 'no';
      $OPT{$verboseOPT{$var}} = delete($ENV{$var});
    }
  }
  getopts('1f:hsx:F:L:MOSUX', \%OPT);
  if( $OPT{h} || scalar @ARGV ){
    die("Usage: $0 [-1MOSUXhs] [-F file] [-L dir] [-f file] [-x debugflag]\n");
  }
  $OPT{s}   = $OPT{X} ? 1 : ($OPT{s} || 0);
  #XXX -s could imply -U but for perhaps allowing group changing?!
  #       multiple levels of U? 1 is all 2 is except groups?
  debug(@defbug) if $OPT{x} & 2 && @defbug;
  if( $OPT{S} ){
    eval "use File::Temp ':POSIX'";
    if( $@ && $OPT{O} ){
      *tmpnam = *POSIX::tmpnam;
    }
    else{
      #XXX set security based on $]
      #File::Temp->safe_level( File::Temp::HIGH() );
    }
  }
  if( $OPT{x} & 1 ){
    eval 'use Data::Dumper';
    debug("DEBUG (%OPT = %{\n", Dumper(\%OPT), "})");
  }
}


#Be a good little daemon
{
  $OPT{f} = File::Spec->rel2abs($OPT{f}) if $OPT{f};
  $OPT{F} = File::Spec->rel2abs($OPT{F}) if $OPT{F};
  chdir(File::Spec->rootdir) || die("Couldn't chdir to ROOT directory: $!\n");
  if( $OPT{X} ){
    debug("STARTED (no fork)");
  }
  else{
    unless( defined($pid = fork()) ){
      die("Couldn't fork: $!\n");
    }
    exit 0 if $pid;
    POSIX::setsid();
    debug("STARTED (fork ok)");
    open(STDIN,  '<'. File::Spec->devnull) ||
      die("Can't read from NULL device: $!\n");
    open(STDOUT, '>'. File::Spec->devnull) unless $OPT{L} eq '-' ||
      die("Can't write from NULL device: $!\n");
  }
}



#Set us up the bomb (read configuration)
my(@PJOBS, @TABOPT, %TABMTIME);
LOAD: {
  my($crontabindex, @crontabs, @crontabpaths, @groups);
  $crontabindex =0;
  #This is to prevent memory leaks
  %EXPLODECACHE = @PJOBS = @TABOPT = ();

  unless( $OPT{U} ){
    while( my @F = getgrent() ){ push @groups, [@F] }; endgrent();
  }
  
  if( $OPT{f} || $OPT{F} ){
    push(@crontabpaths, [0, $OPT{f}]) if $OPT{f};    #-f
    push(@crontabpaths, [1, $OPT{F}]) if $OPT{F};    #-F
  }
  else{
    #                [user(0=none, 1=6th field, 2=filename), file]
    @crontabpaths = (
                     [1, '/etc/crontab'],            #System crontab
                     [1, '/etc/cron.d'],             #System crontabs
                     [2, '/var/spool/cron'],         #User   crontabs
                     [2, '/var/spool/cron/crontabs'] # "        "     on Sun
                    );
  }
  foreach my $crontabpath ( @crontabpaths ){
    stat $crontabpath->[1];
    if( -d _ && opendir(CRONTABPATH, $crontabpath->[1]) ){
      push(@crontabs,
           map([$crontabpath->[0], File::Spec->catfile($crontabpath->[1], $_)],
               grep {!/^\./} readdir(CRONTABPATH) ) );
      closedir(CRONTABPATH);
    }
    elsif( -e _ ){
      push(@crontabs, $crontabpath);
    }
    else{
      next;
    }
    $TABMTIME{$crontabpath->[1]} = -M _;
  }
  
  foreach my $tab ( @crontabs ){
    local %ENV = %ENV;
    open(TAB, $tab->[1]) || carp("WARN (Couldn't open $tab->[1]: $!)") && next;
    debug("DEBUG2 (Reading '$tab->[1]')") if $OPT{x} & 2;
    while( <TAB> ){
      local $ENV{USER};
      chomp();
      next if /^\s*(?:\#|$)/;
      if( /^\s*([^\s]*?)\s*=\s*(.*)/ ){
        debug("DEBUG2 (Setting envar $1 => $2)") if $OPT{x} & 2;
        $ENV{uc($1)} = $2; next;
      }
      my @fields = split(/\s+/);
      debug("DEBUG2 (", join(',', @fields), ")") if $OPT{x} & 2;
      if( $tab->[0] == 1){
        $ENV{USER} = splice(@fields,5,1);
      }
      elsif( $tab->[0] == 2 ){
        my $user = basename($tab->[1]);
        next unless getpwnam($user);
        $ENV{USER} = $user;
      }
      $ENV{USER}  ||= $OPT{U} ? 'undef' : scalar getpwuid($<);
      $ENV{UID}   ||= $OPT{U} ? $<      : scalar getpwnam($ENV{USER}) || $<;
      if( exists($ENV{MAILTO}) && ! defined($ENV{MAILTO}) ){
        delete($ENV{MAILTO});
      }
      else{
        $ENV{MAILTO} ||= $ENV{USER};
      }
	unless( $OPT{U} ){
        $ENV{GID} = join(':', map($_->[2],
                                grep($_->[3] =~ /\b$ENV{USER}\b/,@groups) ) )||
                  [grep(lc($_->[0]) eq lc($ENV{USER}), @groups)]->[0]->[2];
	}
      else{
        $ENV{GID} = $(;
      }
      $ENV{LOGNAME} = $ENV{USER};
      $ENV{HOME} ||= $OPT{U} ? File::Spec->rootdir : (getpwnam($ENV{USER}))[7];
      push(@PJOBS, [splice(@fields,0,5),
                    [$crontabindex, {
                                     GID     => delete($ENV{GID}),
                                     UID     => delete($ENV{UID}),
                                     HOME    => delete($ENV{HOME}),
                                     USER    => delete($ENV{USER}),
                                     MAILTO  => delete($ENV{MAILTO}),
                                     LOGNAME => delete($ENV{LOGNAME}) },
                     join(' ', @fields)]]);
      debug("DEBUG2 (Saving job CMD(@fields))") if $OPT{x} & 2;
    }
    close(TAB);
    #XXX debug statement instantiates the key, gets us an error later...
    delete $ENV{USER};
    $TABOPT[$crontabindex++] = \%ENV;
  }
}


#Create EXPLODECACHE
{
  my %verbosetime = (SUN=>0, MON=>1, TUE=>2, WED=>3, THU=>4, FRI=>5, SAT=>6,
                     JAN=>1, FEB=>2, MAR=>3, APR=>4, MAY=>5, JUN=>6, JUL=>7,
                     AUG=>8, SEP=>9, OCT=>10,NOV=>11,DEC=>12);
  sub explode{
    my @exploded;
    return $EXPLODECACHE{$_[0]} if exists $EXPLODECACHE{$_[0]};
    
    foreach ( split(/,/, $_[0]) ){
      if( m%\*/(\d+)% ){
        for(my $i=0; $i<60; $i+=$1){ push(@exploded, $i); }
      }
      elsif( /-/ ){
        my($i, $j, $k) = ($_ =~ m%(\d+)-(\d+)(?:/(\d+))?% );
        $i = $verbosetime{uc($i)} || $i;
        $j = $verbosetime{uc($j)} || $j;
        $k ||= 1;
        for(; $i<=$j; $i+=$k){ push(@exploded, $i); }
      }
      else{
        push(@exploded, $verbosetime{uc()} || $_);
      }
    }
    $EXPLODECACHE{$_[0]} = [@exploded];
  }
  foreach my $job (@PJOBS){
    do { explode($job->[$_]); } for (0..4);
  }
}
  
    
#AD INFINITUM
while(1){
  debug("DEBUG1 (I'm alive and checking)") if $OPT{x} & 1;
  
  my @time = localtime(time());
  foreach my $job (@PJOBS){
    my $pid;
    debug("DEBUG4 (",
          "($job->[0] eq '*' || $job->[0] == $time[1]) &&",
          "($job->[1] eq '*' || $job->[1] == $time[2]) &&",
          "($job->[2] eq '*' || $job->[2] == $time[3]) && (",
          "($job->[4] eq '*' || $job->[4] == $time[6]) ||",
          "($job->[3] eq '*' || $job->[3] == $time[4]) ) )") if $OPT{x} & 4;
    next unless  $job->[0] eq '*' || grep($_ == $time[1],
                                          @{$EXPLODECACHE{$job->[0]}} );
    next unless  $job->[1] eq '*' || grep($_ == $time[2],
                                          @{$EXPLODECACHE{$job->[1]}} );
    next unless  $job->[2] eq '*' || grep($_ == $time[3],
                                          @{$EXPLODECACHE{$job->[2]}} );
    next unless ($job->[4] eq '*' || grep($_ == $time[6],
                                          @{$EXPLODECACHE{$job->[4]}} ) ) ||
                ($job->[3] eq '*' || grep($_ == $time[4],
                                          @{$EXPLODECACHE{$job->[3]}} ) );

    next if $job->[5]->[2] =~ /^#/ && ! $OPT{O}; #Save the forks!
    
    debug("DEBUG4 (Got a job)") if $OPT{x} & 4;
    if( $OPT{s} ){
      job($job->[5]);
    }
    else{
      unless( defined($pid = fork()) ){
        #Really a croak but can't be fatal; since we're the grandparent
        carp("DIE (Couldn't fork: $!)");
        next;
      }
      job($job->[5]) unless $pid;
    }
  }
  $OPT{1} && exit 0;
    
  #XXXsleep 60;
  #XXXdo{ $kid= waitpid(-1, POSIX::WNOHANG()); } until -1 == $kid;
  for(my $i=0; $i<12; $i++){
    sleep 5;
    while( waitpid(-1, POSIX::WNOHANG()) != -1 ){}
  }
  foreach (keys %TABMTIME){
    goto LOAD if $TABMTIME{$_} != (-M $_ || 0);
  }
}

sub carp{
  warn(@_) if $OPT{X} && $OPT{L} ne '-';
  l0g('warnings', 'CARP (', @_, ')');
}

sub croak{
  warn(@_) if $OPT{X} && $OPT{L} ne '-';
  l0g('errors', 'CROAK (', @_, ')');
  exit 0 unless $OPT{s};
}

sub debug{
  l0g('info', @_);
}

sub job{
  my($FRMCHLD, $chldinput, $chldoutput, $return, $CHLDSTDIN, $TOCHLD);
  $return = "undef";

  #Don't kill hashes in perl jobs
  if( $_[0]->[2] !~ /^#/ && $_[0]->[2] =~ /([^%]+)%(.*)/ ){
    return croak("Embedded newlines (%) not allowed with -S") if $OPT{S};
    $_[0]->[2] = $1;
    $chldinput = $2;
    $chldinput =~ s/(.)%/ $1 eq "\\" ? '%' : "$1\n" /eg;
    pipe($CHLDSTDIN=gensym(), $TOCHLD=gensym()) ||
      croak("Couldn't create pipe: $!");
  }

  %ENV = (%{$TABOPT[$_[0]->[0]]}, %{$_[0]->[1]});
  if( $OPT{S} ){
    open(STDERR, ">&STDOUT");
    if( $OPT{O} && $_[0]->[2] =~ /#!perl\s+-e\s+(.*)/ ){
	local $/ = undef;
	my $TMP = gensym();
	my $tmpfile = tmpnam();
	open($TMP, "+>$tmpfile");
	my $oldout = select($TMP);
	$0 = "perl -e $1";
	{
	  local *STDOUT = $TMP;
	  local *STDERR = $TMP;
	  local $SIG{__WARN__} = sub{print STDERR @_};
	  eval($1);
	}
	select($oldout);
	if($@){
	  return croak("Failed (with $@) evaluting\n$1");
	}
	seek($TMP,0,0);
	$chldoutput = join('', <$TMP>);
	close($TMP);
	unlink($tmpfile);
    }
    else{
      $chldoutput = qx($_[0]->[2]);
    }
  }
  else{
    my $pid = 0 || open($FRMCHLD=gensym(), "-|");
    #XXX Michael Schwern of p5p reports former doesn;t work on VMS in 5.7.2
    #|| open($FRMCHLD=gensym(), "-|", 'perl bug') ;#?!
    unless( defined($pid) ){
      croak("Couldn't fork: $!");
      return -1;
    }
    if( $pid ){
      $0 = uc($0) . "($pid) ";
      $ENV{USER} = $_[0]->[1]->{USER};
      if( defined($chldinput) ){
        #close($CHLDSTDIN); #XXX gives SIGPIPE
        print $TOCHLD $chldinput;
        close($TOCHLD);
      }
      $chldoutput = join('', <$FRMCHLD>);
      $return = close($FRMCHLD);
    }
    else{
      my $gid;
      if( defined($chldinput) ){
        close($TOCHLD);
        my $fileno = fileno($CHLDSTDIN);
        open(STDIN, "<&$fileno");
      }
      open(STDERR, ">&STDOUT");

      unless( $< || $OPT{U} ){
        $gid = $ENV{GID};
        $gid =~ tr/:/ /;
        $gid = $gid =~ / / ? $gid : "$gid $gid";
        $( = $) = $gid;
        $< = $> = $ENV{UID};
        sub list{
          my $prev = 'NaN';
          return join(',', grep($_ ne $prev && (($prev) = $_),
                                sort split($_[0], $_[1] )));
        };
        croak("DIE (Couldn't setregid($(, $gid): $!)") unless
          ($( eq $)) && list(' ', $() eq list(':', $ENV{GID});
        croak("DIE (Couldn't setreuid($<, $ENV{UID}): $!") unless
          ($< == $>) && ($> == $ENV{UID});
      }
      $ENV{PATH} = delete($ENV{SUPATH}) unless $< && ! exists($ENV{SUPATH});

      if( $OPT{O} && $_[0]->[2] =~ /#!perl\s+-e\s+(.*)/ ){
        $0 = "perl -e $1";
        eval $1;
      }
      else{
        exec($_[0]->[2]);
      }
      exit();
    }
  }
  debug("CMD ($_[0]->[2])[$return]");
  debug("DEBUG8 (\n", $chldoutput, ")") if $OPT{x} & 8;
  mail($ENV{MAILTO}, $chldoutput) if $ENV{MAILTO} && $chldoutput;
  if( $OPT{s} ){
    $0 = "crond";
    return 0;
  }
  else{
    exit 0;
  }
}

sub l0g{
  return unless $OPT{L};
  my $log = shift();
  open(LOG, $OPT{L} eq '-' ? '>-' : ">>$OPT{L}/$log" ) || return;
  #Can't rely on LOCK_EX being 2 for cross-platform
  flock(LOG, Fcntl::LOCK_EX()) unless $OPT{L} eq '-';
  print LOG scalar localtime(time()), " $0\[$$\]: (", $ENV{USER}||$<,") @_\n";
  close(LOG) unless $OPT{L} eq '-';
}

sub mail{
  return if $OPT{M};
  my @x_cron_env;
  foreach my $key ( keys %ENV ){
    push @x_cron_env, "<$key=$ENV{$key}>";
  }
  if( $Mail::Send::VERSION ){
    my($msg, $fh);
    $msg = new Mail::Send;
    $msg->to($_[0]);
    $msg->subject($0);
    $msg->set('X-Cron-Env', @x_cron_env);
    $fh = $msg->open;
    print $fh $_[1];
    $fh->close;
  }
  elsif( $Mail::Sendmail::VERSION ){
    my(%mail, $host);
#XXXbe smarter later...
    $host = $mail{smtp} = 'localhost';
    %mail = (
             %mail,
             From => "$ENV{USER}\@$host",
             To => $_[0] =~ /@/ ? $_[0] : "$_[0]\@$host",
             Subject => $0,
             Message => $_[1],
             "X-Cron-Env" => join(',', @x_cron_env),
            );
    #Damn strict vars, maybe this gets optimized out
    $Mail::Sendmail::mailcfg = $Mail::Sendmail::mailcfg;
    $Mail::Sendmail::mailcfg{mime} = 0;
    Mail::Sendmail::sendmail(%mail);
  }
  else{
    open(MAIL, "|/bin/mail -s \"@{[quotemeta($0)]}\" $_[0]")
      || carp("WARN (Couldn't mail $_[0])(\n$_[1]\n)");
    print MAIL join("\n", map("X-Cron-Env: $_", @x_cron_env)), "\n";
    print MAIL $_[1];
    close(MAIL);
  }
}
