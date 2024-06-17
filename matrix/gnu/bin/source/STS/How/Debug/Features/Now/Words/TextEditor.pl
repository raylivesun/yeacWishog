#!/usr/bin/perl

# Some beginners try to use a word processor instead of a text editor. We recommend
# against this—it’s inconvenient at best and impossible at worst. But we won’t try to stop
# you. Be sure to tell the word processor to save your file as “text only”; the word pro-
# cessor’s own format will almost certainly be unusable. Most word processors will
# probably also tell you that your Perl program is spelled incorrectly and should use fewer
# semicolons.


use strict;
use warnings;
use utf8;

use open ':std', ':encoding(UTF-8)';



my $filename = shift @ARGV;

open my $fh, '<', $filename
  or die "Could not open $filename: $!";


while (my $line = <$fh>) {
    chomp $line;
    print "$line\n";
}

close $fh
  or die "Could not close $filename: $!";

  