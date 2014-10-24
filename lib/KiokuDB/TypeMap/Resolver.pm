#!/usr/bin/perl

package KiokuDB::TypeMap::Resolver;
use Moose;

use KiokuDB::TypeMap;
use KiokuDB::TypeMap::Entry::MOP;

use namespace::clean -except => 'meta';

has typemap => (
    isa => "KiokuDB::TypeMap",
    is  => "ro",
);

has [qw(_collapse _expand)] => (
    isa => "HashRef",
    is  => "ro",
    default => sub { return {} },
);

sub resolved {
    my ( $self, $class ) = @_;

    exists $self->_collapse->{$class};
}

sub collapse_method {
    my ( $self, $class ) = @_;

    if ( my $method = $self->_collapse->{$class} ) {
        return $method;
    } else {
        $self->resolve($class);
        return $self->_collapse->{$class};
    }
}

sub expand_method {
    my ( $self, $class ) = @_;

    if ( my $method = $self->_expand->{$class} ) {
        return $method;
    } else {
        $self->resolve($class);
        return $self->_expand->{$class};
    }
}

sub compile_entry {
    my ( $self, $class, $entry ) = @_;

    my ( $collapse, $expand ) = $entry->compile($class);

    $self->register_compiled( $class, $collapse, $expand );
}

sub register_compiled {
    my ( $self, $class, $collapse, $expand ) = @_;
    $self->_collapse->{$class} = $collapse;
    $self->_expand->{$class}   = $expand;
}

sub resolve {
    my ( $self, $class ) = @_;

    if ( my $entry = $self->typemap->resolve($class) ) {
        $self->compile_entry( $class, $entry );
    } else {
        $self->resolve_fallback($class);
    }

    return;
}

sub resolve_fallback {
    my ( $self, $class ) = @_;

    if ( my $meta = Class::MOP::get_metaclass_by_name($class) ) {
        $self->resolve_fallback_with_meta($class, $meta);
    } else {
        $self->resolve_fallback_without_meta($class);
    }
}

sub resolve_fallback_with_meta {
    my ( $self, $class, $meta ) = @_;

    # FIXME only allow with Storage?
    return $self->compile_entry( $class => KiokuDB::TypeMap::Entry::MOP->new );
}

sub resolve_fallback_without_meta {
    my ( $self, $class ) = @_;

    die "todo ($class has no fallback, no meta)";
}

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__
