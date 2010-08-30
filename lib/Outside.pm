package Outside;
use strict;
use warnings;
require App::Foo;
require App::Bar;

require Exporter;
our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
  out
  pass
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
);

our $VERSION = '0.01';

use fields qw(
  out
  pass
);


sub new {
  my $invoker = shift;
  my $class = ref($invoker) || $invoker;
  my $self = {
        # attributes go here
        @_, # override attributes
  };
  bless $self, $class;
  # initilize sub for filling
  return $self;
}

=head1 Methods

=head2 out

  The out method

=cut
sub out {
        my $self = shift;
        print "this is out\n";
}

=head2 pass

  The pass method

=cut
sub pass {
        my $self = shift;
        print "this is pass:\t@_";
}
1;
