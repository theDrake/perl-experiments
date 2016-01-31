#!/usr/bin/perl

use strict;
use warnings;
use Path::Class;
use autodie;

my $dir = dir("/tmp");
my $file = $dir->file("file.txt");
my $content = $file->slurp();  # to read entire contents of file
print $content;
my $file_handle = $file->openr();  # to get IO::File object to read from
while (my $line = $file_handle->getline()) {
  print $line;
}
