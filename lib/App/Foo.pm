#!/usr/bin/perl
package App::Foo;
use base(App);

use strict;
use warnings;

=head2 bat

  The bat method

=cut
sub cat {
        my $self = shift;
        print "this is cat\n";
}

=head2 bat

  The bat method

=cut
sub bat {
        my $self = shift;
        ${$self->{caller}}->pass("this is bat $self\n");
}
1;
