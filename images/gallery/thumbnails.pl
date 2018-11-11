#! /usr/bin/perl
use strict;
use File::Basename;

mkdir 'thumbnails';
while (my $file = shift) {
  my $basename = basename($file);
  system("curl -X POST --data-binary \@$file 'http://croppola.com/croppola/image.jpg?aspectRatio=1.0&minimumHeight=30%&scaledMaximumWidth=300&algorithm=croppola' > thumbnails/$basename");
}