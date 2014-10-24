#!/usr/bin/perl

package KiokuDB::Backend::Serialize::Memory;
use Moose::Role;

use Storable qw(dclone);

use namespace::clean -except => 'meta';

with qw(
    KiokuDB::Backend::Serialize
    KiokuDB::Backend::UnicodeSafe
    KiokuDB::Backend::BinarySafe
    KiokuDB::Backend::TypeMap::Default::Storable
);

sub serialize {
    my ( $self, $entry ) = @_;

    return dclone($entry);
}

sub deserialize {
    my ( $self, $blob ) = @_;

    return defined($blob) && dclone($blob);
}

__PACKAGE__

__END__
