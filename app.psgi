#!/usr/bin/perl

# To run:
# > plackup
# > Accepting connections at http://0:5000/

use strict;
use warnings;
use Plack::App::Directory;

my $app = Plack::App::Directory->new({root => "/path/to/htdocs"})->to_app;
