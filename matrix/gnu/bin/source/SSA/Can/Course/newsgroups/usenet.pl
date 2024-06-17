#!/usr/bin/perl

# The official Perl newsgroups on Usenet are located in the comp.lang.perl.* part of the
# hierarchy. As of this writing, there are five of them, but they change from time to time.


use strict;
use Getopt::Long;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Mail::SpamAssassin;
use Mail::SpamAssassin::Conf;
use Mail::SpamAssassin::Logger;
use Mail::SpamAssassin::Plugin;
use Mail::SpamAssassin::PerMsgStatus;
use Mail::SpamAssassin::PerMsgStatus::Plugin;
use Mail::SpamAssassin::PerMsgStatus::PerMsgStatus;
use Mail::SpamAssassin::PerMsgStatus::PerMsgStatus::Plugin;
use Mail::SpamAssassin::PerMsgStatus::PerMsgStatus::PerMsgStatus


my $conf = Mail::SpamAssassin::Conf->new();
my $logger = Mail::SpamAssassin::Logger->new($conf);
my $pmsgstatus = Mail::SpamAssassin::PerMsgStatus->new($
    $conf, $logger);

$pmsgstatus->register_plugin(
    Mail::SpamAssassin::PerMsgStatus::PerMsgStatus::Plugin->new($pmsgstatus));

