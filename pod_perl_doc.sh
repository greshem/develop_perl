#!/bin/sh -ef
export LC_ALL=C

while getopts h opt; do
	case "$opt" in
		h) pod2usage --exit=0 "$0"; exit 0 ;;
		*) pod2usage --exit=2 "$0"; exit 2 ;;
	esac
done
shift "$((OPTIND-1))"

if [ $# -lt 2 ]; then
	echo "${0##*/}: not enough arguments" >&2
	pod2usage --exit=2 "$0"; exit 2
fi

. /usr/share/rpmdevtools/tmpdir.sh
rpm2cpio "$1" |(cd "$TMPDIR"; fakeroot -s .fakedata -- \
	cpio -idmu --quiet --no-absolute-filenames) || exit 2
shift
cd "$TMPDIR"
export RPM_BUILD_ROOT="$TMPDIR"
fakeroot -i .fakedata -- "$@"

: <<'__EOF__'

=head1	NAME

rpmpeek - execute command within RPM contents

=head1	SYNOPSIS

B<rpmpeek> [B<-h>] I<RPM> I<command> [I<args>...]

=head1	DESCRIPTION

B<rpmpeek> unpacks I<RPM> contents into a temporary directory and
executes a I<command> under that directory.  The directory is purged
upon exit.

=head1	AUTHOR

Written by Alexey Tourbin <at@altlinux.org>.

=head1	COPYING

Copyright (c) 2005 Alexey Tourbin, ALT Linux Team.

This is free software; you can redistribute it and/or modify it under the terms
of the GNU General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later version.

=head1	SEE ALSO

rpm(8),
rpm2cpio(8),
fakeroot(1)

=cut

__EOF__
