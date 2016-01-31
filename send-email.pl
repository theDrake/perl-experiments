#!/usr/bin/perl

use strict;
use warnings;
use Email::MIME;

my $message = Email::MIME->create(
  header_str => [
    From => 'you@example.com',
    To => 'friend@example.com',
    Subject => 'Hello, friend!',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset => 'ISO-8859-1',
  },
  body_str => "How are you these days?\n",
);
use Email::Sender::Simple qw(sendmail);
sendmail($message);
