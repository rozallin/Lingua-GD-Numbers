package Lingua::GD::Numbers;

use strict;
use warnings;
use utf8;

%NUMBER_NAMES             = (
    1    => 'aon',
    2    => 'dhà',
    3    => 'trì',
    4    => 'ceithir',
    5    => 'còig',
    6    => 'sia',
    7    => 'seachd',
    8    => 'ochd',
    9    => 'naoi',
    10   => 'deich',
    11   => 'h-aon deug',
    12   => 'dhà dheug',
    13   => 'trì deug',
    14   => 'ceithir deug',
    15   => 'còig deug',
    16   => 'sia deug',
    17   => 'seachd deug',
    18   => 'ochd deug',
    19   => 'naoi deug',
    20   => 'fichead',
    30   => 'trìthead',
    40   => 'ceathrad',
    50   => 'caogad',
    60   => 'seasgad',
    70   => 'seachdad',
    80   => 'ochdad',
    90   => 'naochad',
    100  => 'ceud',
    1e3  => 'mile',
    1e6  => 'millean',
    1e12 => 'billean', 
);

# Test if $number is really a number, or return undef, from perldoc
    # -q numbers
    $number =~ s/_//g; # Allow for '_' separating figures
    if ( $number !~ /^([+-]?)(?=\d|\.\d)\d*(\.\d*)?([Ee]([+-]?\d+))?$/ ) {
        carp("Invalid number format: '$number'");
        return;
    }
 
    if ( $number > ( 1e75 - 1 ) ) {
        carp("Number '$number' too big to be represented as string");
        return;
    }
