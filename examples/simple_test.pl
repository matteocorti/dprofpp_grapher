#!/usr/bin/perl -d:DProf

use Time::HiRes qw( sleep );

my $ITERATIONS = 1000;

sub foo {

    my $counter = 0;

    while ($counter < $ITERATIONS) {

        bar1();
        bar2();

        $counter++;
        
    }

}

sub bar1 {

    my $counter = 0;
    my $result  = 0;
    while ($counter < $ITERATIONS) {
        $counter++;
        $result = $counter / ($result + 4.3);
    }

    bar3();
    
    return;

}

sub bar2 {

    my $counter = 0;
    my $result  = 0;
    while ($counter < 2 * $ITERATIONS) {
        $counter++;
        $result = $counter / ($result + 4.3);
    }
    
    return;

}

sub bar3 {

    my $counter = 0;
    my $result  = 0;
    while ($counter < 2 * $ITERATIONS) {
        $counter++;
        $result = $counter / ($result + 4.3);
    }
    
    return;

}


foo();

1;
