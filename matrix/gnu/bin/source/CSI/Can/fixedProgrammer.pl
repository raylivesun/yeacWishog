#!/usr/bin/perl

# But with Perl, you’ve got the source. In the rare and unlikely event that you can’t get a
# bug fixed any other way, you can hire a programmer or 10 and get to work. For that
# matter, if you buy a new machine that Perl doesn’t yet run on, you can port it yourself.
# Or if you need a feature that doesn’t yet exist, well, you know what to do.


use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok( 'Data::Object::Array' ); }


ok( 1 and done_testing(), 'Data::Object::Array loaded' );

sub done_testing { # return
    return 1;
}
