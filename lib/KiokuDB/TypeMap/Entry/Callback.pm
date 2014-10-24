#!/usr/bin/perl

package KiokuDB::TypeMap::Entry::Callback;
use Moose;

no warnings 'recursion';

use namespace::clean -except => 'meta';

with qw(KiokuDB::TypeMap::Entry::Std);

has [qw(collapse expand)] => (
    is  => "ro",
    isa => "Str|CodeRef",
    required => 1,
);

sub compile_mappings {
    my ( $self, @args ) = @_;

    my $collapse_object = $self->collapse;
    my $collapse = sub {
        my ( $self, %args ) = @_;

        my @data = $args{object}->$collapse_object;

        return [ map { $self->visit($_) } @data ];
    };

    my $expand_object = $self->expand;
    my $expand = sub {
        my ( $self, $entry ) = @_;

        $self->inflate_data($entry->data, \( my $args ));

        # does *NOT* support circular refs
        # document it as such
        my $object = $entry->class->$expand_object(@$args);

        $self->register_object( $entry => $object );

        return $object;
    };

    return ( $collapse, $expand );
}

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__
