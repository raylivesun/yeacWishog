#!/usr/bin/perl

# You should generally use a programmers’ text editor, rather than an ordinary editor.
# What’s the difference? Well, a programmers’ text editor will let you do things that
# programmers need, like indenting or unindenting a block of code, or finding the
# matching closing curly brace for a given opening curly brace. On Unix systems, the two
# most popular programmers’ editors are emacs and vi (and their variants and clones).
# BBEdit and TextMate are good editors for Mac OS X, and a lot of people have said nice
# things about UltraEdit and PFE (Programmer’s Favorite Editor) on Windows. The
# perlfaq2 manpage lists several other editors, too. Ask your local expert about text ed-
# itors on your system.


use strict;
use warnings;

use utf8;


my $filename = shift @ARGV;

open my $fh, '<', $filename or die "Cannot open $filename: $!";

while (my $line = <$fh>) {
    chomp $line;
    print $line, "\n";
}

close $fh or die "Cannot close $filename: $!";
