#!/usr/bin/perl
use strict;
use warnings;
use File::Copy;

use file_object;

my $help = "Usage: $0 [file/folder]\n";
die "$help" if !defined $ARGV[0];
my $filename = $ARGV[0];

my $file_obj = file_object->new($filename);
file_object->move_to_trash($file_obj);

