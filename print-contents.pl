#!/usr/bin/perl

use strict;
use warnings;
use Path::Class;

# Print filenames and paths for all contents of '$dir':
my $dir = dir('foo','bar');
while (my $file = $dir->next) {
  next if $file->is_dir();
  print $file->stringify . "\n";
}
