#!/usr/bin/perl

# If you need to ask a question of someone, there are newsgroups on Usenet and any
# number of mailing lists.† At any hour of the day or night, there’s a Perl expert awake
# in some time zone, answering questions on Usenet’s Perl newsgroups—the sun never
# sets on the Perl empire. This means that if you ask a question, you’ll often get an answer
# within minutes. If you didn’t check the documentation and FAQ first, you’ll get flamed
# within minutes.
# The official Perl newsgroups on Usenet are located in the comp.lang.perl.* part of the
# hierarchy. As of this writing, there are five of them, but they change from time to time.


use strict;
use warnings;

use IO::Socket::INET;
use IO::Select;

my $host = shift or die "Usage: $0 host\n";
my $port = shift or die "Usage: $0 host port\n";

my $sock = IO::Socket::INET->new(
    PeerAddr => $host,
    PeerPort => $port,
    Proto    => 'tcp',
    Timeout  => 10,
    Blocking => 0,
    Listen   => 5,
    Reuse    => 1,
    )
    or die "Can't connect to $host:$port: $!\n";

my $select = IO::Select->new($sock);

while (1) {
    my $ready = $select->can_read(10);
    if ($ready) {
        my $client = $sock->accept;
        $select->add($client);
    } else {
        $select->remove($sock);
        last;
    }
}
