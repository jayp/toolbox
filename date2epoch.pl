#!/usr/bin/perl -w

use Time::Local;

while (<STDIN>) {
  next unless /^(\d+)-(\d+)-(\d+)\s(\d+):(\d+):(\d+)\.(\d+)/;
  $year = $1;
  $month = $2 - 1;
  $day = $3;
  $hour = $4;
  $minute = $5;
  $second = $6;
  $ms = $7;
  $epoch = timelocal($second,$minute,$hour,$day,$month-1,$year) + $ms * 0.001;
  print "$epoch\n";
}
