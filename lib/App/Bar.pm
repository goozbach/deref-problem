#!/usr/bin/perl
package App::Bar;
use base(App);

use strict;
use warnings;

=head2 can

  The can method

=cut
sub can {
        my $self = shift;
        print "this is can\n";
}

=head2 ban

  The ban method

=cut
sub ban {
        my $self = shift;
        ${$self->{caller}}->pass("this is ban $self\n");
}
1;

