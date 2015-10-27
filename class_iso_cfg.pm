################################################################################
#
#  $Revision: 19 $
#  $Author: mhx $
#  $Date: 2010/05/23 10:37:46 +0200 $
#
################################################################################
#
#  Version 2.x, Copyright (C) 2007-2010, Marcus Holland-Moritz <mhx@cpan.org>.
#  Version 1.x, Copyright (C) 1997, Graham Barr <gbarr@pobox.com>.
#
#  This program is free software; you can redistribute it and/or
#  modify it under the same terms as Perl itself.
#
################################################################################
#from 
#/usr/lib/perl5/IPC/Msg.pm

package ISO_CONFIG;

use strict;
use vars qw($VERSION);
use Carp;

$VERSION = do { my @r = '$Snapshot: /ISO-SysV/2.03 $' =~ /(\d+\.\d+(?:_\d+)?)/; @r ? $r[0] : '9.99' };
$VERSION = eval $VERSION;

# Figure out if we have support for native sized types
my $N = do { my $foo = eval { pack "L!", 0 }; $@ ? '' : '!' };

{
    package ISO_CONFIG::stat;

    use Class::Struct qw(struct);

    struct 'ISO_CONFIG::stat' => [
	uid	=> '$',
	gid	=> '$',
	cuid	=> '$',
	cgid	=> '$',
	mode	=> '$',
	qnum	=> '$',
	qbytes	=> '$',
	lspid	=> '$',
	lrpid	=> '$',
	stime	=> '$',
	rtime	=> '$',
	ctime	=> '$',
    ];
}

sub new {
    @_ == 3 || croak 'new ISO_CONFIG ( KEY , FLAGS )';
    my $class = shift;

    my $id = msgget($_[0],$_[1]);

    defined($id)
	? bless \$id, $class
	: undef;
}

sub id {
    my $self = shift;
    $$self;
}

sub stat {
    my $self = shift;
    my $data = "";
    print ($$self."IPC_STAT".$data) or return undef;
    ISO_CONFIG::stat->new->unpack($data);
}

sub set {
    my $self = shift;
    my $ds;

    if(@_ == 1) {
	$ds = shift;
    }
    else {
	croak 'Bad arg count' if @_ % 2;
	my %arg = @_;
	$ds = $self->stat
		or return undef;
	my($key,$val);
	$ds->$key($val)
	    while(($key,$val) = each %arg);
    }

    #msgctl($$self,IPC_SET,$ds->pack);
    print($$self,"IPC_SET",$ds->pack);
}

sub remove {
    my $self = shift;
    #(msgctl($$self,IPC_RMID,0), undef $$self)[0];
    print ($$self,"IPC_RMID",0);
}

sub rcv {
    @_ <= 5 && @_ >= 3 or croak '$msg->rcv( BUF, LEN, TYPE, FLAGS )';
    my $self = shift;
    my $buf = "";
    print ($$self,$buf,$_[1],$_[2] || 0, $_[3] || 0) or
	return;
    my $type;
    ($type,$_[0]) = unpack("l$N a*",$buf);
    $type;
}

sub snd {
    @_ <= 4 && @_ >= 3 or  croak '$msg->snd( TYPE, BUF, FLAGS )';
    my $self = shift;
    msgsnd($$self,pack("l$N a*",$_[0],$_[1]), $_[2] || 0);
}


1;

#==========================================================================
#main 
#use IPC::SysV qw(IPC_PRIVATE S_IRUSR S_IWUSR);
push(@INC, "./");
#use ISO_CONFIG;

my $msgtype;
my  $msgdata;


my $msg = ISO_CONFIG->new("IPC_PRIVATE", "S_IRUSR | S_IWUSR");

$msg->snd($msgtype, $msgdata);

my $buf;
$msg->rcv($buf, 256);

#my $ds = $msg->stat;

$msg->remove;

print "OK , everything is ok \n";




