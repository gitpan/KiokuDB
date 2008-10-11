#!/usr/bin/perl

package KiokuDB::Set::Transient;
use Moose;

use Carp qw(croak);

use namespace::clean -except => 'meta';

with qw(KiokuDB::Set);

extends qw(KiokuDB::Set::Base);

sub loaded { 1 }

sub includes { shift->_objects->includes(@_) }
sub remove   { shift->_objects->remove(@_) }
sub members  { shift->_objects->members }

sub insert   {
    my ( $self, @objects ) = @_;
    croak "Can't insert non reference into a KiokuDB::Set" if grep { not ref } @objects;
    $self->_objects->insert(@objects)
}

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__
