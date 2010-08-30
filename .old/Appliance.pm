package Coraid::Appliance;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
  release
  serial
  model
  eladdr
  firmware
  network
  environmentals
  rest_object
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
);

our $VERSION = '0.01';

use fields qw(
  release
  serial
  model
  eladdr
  firmware
  network
  environmentals
  rest_object
);

=head1 NAME

Coraid::Appliance - Base module for Coraid::Appliance::* Modules. Use it to
create Coraid::Appliance:: modules. Contains all the methods and attributes
common to Coraid Appliances.

=head1 SYNOPSIS

  # Coraid::Appliance package not to be used directly
  package Coraid::Appliance::Foo;
  use base(Coraid::Appliance);

  sub attr {
    my($self) = @_;
    $self->attr();
  }

  ...


=head1 DESCRIPTION

Use this module as a base class for creating modules of the Coraid::Appliance type.

=head1 EXPORTS

TODO Discover if we need exports
Exports by default the following attributes and methods common to all types of 
Coraid appliances. These can be overwritten in the sub-class.

  release

  serial

  model

  eladdr

  firmware

  network

  environmentals

=head1 FUNCTIONS

=head2 new

 See Synopsis above

=cut

sub new {
  my $invoker = shift;
  my $class = ref($invoker) || $invoker;
  my $self = {
        # attributes go here
        release         => 'SUBrelease',
        serial          => 'SUBserial',
        model           => 'SUBmodel',
        eladdr          => 'SUBeladdr',
        firmware        => 'SUBfirmware',
        network         => 'SUBnetwork',
        rest_object     => 'SUBrest_object',
        @_, # override attributes
  };
  bless $self, $class;
  # initilize sub for filling
  return $self;
}

=head1 ATTRIBUTES

These are the attributes (read only meta-data for the base class)

=head2 release

  The release of CorOS which is runnning on the appliance.

=cut
sub release {
        my $self = shift;
        return $self->{'release'};
}

=head2 serial
 
  The serial number of the appliance.

=cut
sub serial {
        my $self = shift;
        return $self->{'serial'};
}

=head2 model

  The model number of the appliance.

=cut
sub model {
        my $self = shift;
        return $self->{'model'};
}

=head2 eladdr

  The internalized EL protocol address of the machine.
  TODO discover if we want to publicise this info.

=cut
sub eladdr {
        my $self = shift;
        return $self->{'eladdr'};
}

=head2 firmware
 
  The firmware of the appliance.
  TODO discover the difference between firmware and release

=cut
sub firmware {
        my $self = shift;
        return $self->{'firmware'};
}

=head2 network

  The network settings of the appliance.

=cut
sub network {
        my $self = shift;
        return $self->{'network'};
}

=head2 rest_object

  A reference to the Coraid::REST object which contains this object

=cut
sub rest_object {
        my $self = shift;
        return $self->{'rest_object'};
}
=head1 functions -- must be run from the Coraid::REST interface

=head2 environmentals

  The environmentl values of the appliance (power, temp, fan speed)

=cut
sub environmentals {
  # TODO need to figure out way of calling Coraid::REST session which 
  # has this object in memory
  my $self = shift;
  return $self->{'environmentals'};
}

=head1 SEE ALSO

Coraid::Appliance::ESM
Coraid::Appliance::SRX
Coraid::REST

=head1 AUTHOR

TODO get copyright

=head1 COPYRIGHT AND LICENSE

TODO get copyright


=cut
1;
