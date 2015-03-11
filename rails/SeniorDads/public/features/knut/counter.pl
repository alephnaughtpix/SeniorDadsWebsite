#!/usr/bin/perl

$LOCK_SH=1;             # Flags for the UNIX file-locking bit.
$LOCK_EX=2;
$LOCK_NB=4;
$LOCK_UN=8;

$COUNTER_FILE=".counter";

&lock_file($COUNTER_FILE);
open(COUNT,$COUNTER_FILE);
$total=<COUNT>;
close COUNT;
print $total;
$total++;
open(COUNT,">$COUNTER_FILE");
print COUNT $total;
close COUNT;
&unlock_file($COUNTER_FILE);

# Lock file- this does it the standard UNIX way...

sub lock_file {
  local ($lock_file) = pop(@_);
  flock($lock_file,$LOCK_SH);
}

# Unlocks a previously locked file.

sub unlock_file {
  local ($lock_file) = pop(@_);
  flock ($lock_file,$LOCK_UN);
}

