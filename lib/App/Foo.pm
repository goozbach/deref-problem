#!/usr/bin/perl
package App::Foo;
use base(App);

use strict;
use warnings;

=head2 bat

  The bat method

=cut
sub bat {
        my $self = shift;
        print "this is bat\n";
}

=head2 cat

  The cat method

=cut
sub cat {
        my $self = shift;
        print "this is cat\n";
}
1;
