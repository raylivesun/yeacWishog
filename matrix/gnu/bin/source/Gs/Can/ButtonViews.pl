#!/usr/bin/perl

# How Can I Get Support for Perl?

# Well, you get the complete source—so you get to fix the bugs yourself!
# That doesn’t sound so good, does it? But it really is a good thing. Since there’s no
# “source code escrow” on Perl, anyone can fix a bug—in fact, by the time you’ve found
# and verified a bug, someone else probably already has a fix for it. There are thousands
# of people around the world who help maintain Perl.
# Now, we’re not saying that Perl has a lot of bugs. But it’s a program, and every program
# has at least one bug. To see why it’s so useful to have the source to Perl, imagine that
# instead of using Perl, you licensed a programming language called Forehead from a

use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok('Test::More') }

sub test_view {
    my $view = shift;
    is($view, 42, 'view is 42');
}

test_view(42);

sub test_view_with_more {
    my $view = shift;
    is($view, 42, 'view is 42');
}

test_view_with_more(42);

sub test_view_with_less {
    my $view = shift;
    is($view, 42, 'view is 42');
}

test_view_with_less(42);

sub test_view_with_less_and_more {
    my $view = shift;
    is($view, 42, 'view is 42');
}

test_view_with_less_and_more(42);


