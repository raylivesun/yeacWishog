#!/usr/bin/perl

# Are There Any Other Kinds of Support?
# Sure. One of our favorites is the Perl Mongers. This is a worldwide association of Perl
# users’ groups; see http://www.pm.org/ for more information. There’s probably a group
# near you with an expert or someone who knows an expert. If there’s no group, you can
# easily start one.


use strict;
use warnings;
use utf8;

use Test::More tests => 1;

BEGIN { use_ok( 'Perl::Critic::Policy' ); }

sub test_perl {
    my $policy = Perl::Critic::Policy->new(
        -profile => 'Perl::Critic::Policy::Perl::Critic',
        -config  => {
            'Perl::Critic::Policy::Perl::Critic' => {
                -exclude => [
                    'Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl
                    ::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::
                    '],
                    -include => [
                        'Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::Perl
                        ::Critic::Policy::Perl::Critic::Policy::Perl::Critic::Policy::
                        '],
            };
        });
}
