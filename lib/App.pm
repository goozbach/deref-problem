package App;
use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
  getter
  setter
  caller
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
);

our $VERSION = '0.01';

use fields qw(
  getter
  setter
  caller
);

=head1 NAME

App base class

=head1 SYNOPSIS

  package App::Foo;
  use base(App);

  sub attr {
    my($self) = @_;
    $self->attr();
  }

  ...


=head1 DESCRIPTION

Use this module as a base class.


=head1 FUNCTIONS

=head2 new

 See Synopsis above

=cut

sub new {
  my $invoker = shift;
  my $class = ref($invoker) || $invoker;
  my $self = {
        # attributes go here
        caller => 'sub',
        @_, # override attributes
  };
  bless $self, $class;
  # initilize sub for filling
  return $self;
}

sub caller {
      my $self = shift;
      if (@_) { $self->{caller} = shift }
      return $self->{caller};
}

=head1 Methods

=head2 getter

  The getter method

=cut
sub getter {
        my $self = shift;
        print "this is getter\n";
}

=head2 setter

  The setter method

=cut
sub setter {
        my $self = shift;
        ${$self->{caller}}->pass("this is setter $self\n");
}
1;
