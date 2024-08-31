#!/usr/bin/perl

use v5.14;
use warnings;

use Test2::V0;

use lib "t";
use testcase "t::prefix";

BEGIN {
   $^H{"t::prefix/func"}++;
   $^H{"t::prefix/prefixed"}++;
}

our $LOG; BEGIN { $LOG = "" };

prefixed func example {
   BEGIN { $LOG .= "B" }
}

is( $LOG, "SpSfEpEfBLfLpNpNf", 'stages run in correct order' );

done_testing;
