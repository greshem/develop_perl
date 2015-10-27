#!/usr/bin/perl

use Net::SSH qw(ssh issh sshopen2 sshopen3);

ssh('user@hostname', $command);

issh('user@hostname', $command);

ssh_cmd('user@hostname', $command);
ssh_cmd( {
user => 'user',
host => 'host.name',
command => 'command',
args => [ '-arg1', '-arg2' ],
stdin_string => "string\n",
} );

sshopen2('user@hostname', $reader, $writer, $command);

sshopen3('user@hostname', $writer, $reader, $error, $command);

