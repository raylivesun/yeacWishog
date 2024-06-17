#!/usr/bin/perl

# giant, powerful corporation owned by a zillionaire with a bad haircut. (This is all
# hypothetical. Everyone knows there’s no such programming language as Forehead.)
# Now think of what you can do when you find a bug in Forehead. First, you can report
# it; second, you can hope—hope that they fix the bug, hope that they fix it soon, hope
# that they won’t charge too much for the new version. You can hope that the new version
# doesn’t add new features with new bugs, and hope that the giant company doesn’t get
# broken up in an antitrust lawsuit.


use strict;
use warnings;

use Test::More;

use Forehead;

my $forehead = Forehead->new;

is $forehead->version, '0.0.1', 'version';

done_testing;
