package KiokuDB::Serializer::Storable;
BEGIN {
  $KiokuDB::Serializer::Storable::AUTHORITY = 'cpan:NUFFIN';
}
{
  $KiokuDB::Serializer::Storable::VERSION = '0.55';
}
use Moose;

use namespace::clean -except => 'meta';

with qw(
    KiokuDB::Serializer
    KiokuDB::Backend::Serialize::Storable
);

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__

=pod

=head1 NAME

KiokuDB::Serializer::Storable

=head1 VERSION

version 0.55

=head1 AUTHOR

Yuval Kogman <nothingmuch@woobling.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Yuval Kogman, Infinity Interactive.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
