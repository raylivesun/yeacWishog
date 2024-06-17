#!/usr/bin/perl

# Once you’re 99% certain that you’ve found a real bug, ask around. Ask someone at
# work, at your local Perl Mongers’ meeting, or at a Perl conference. Chances are, it’s
# still a feature, not a bug.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Data::Object::Array' ); }


ok( 1 and done_testing(), 'Data::Object::Array loaded' );

sub done_testing_tests {
    my $count = 0;
    for my $test (@_) {
        if ($test) {
            $count++;
        }
    }
    return $count;
}

