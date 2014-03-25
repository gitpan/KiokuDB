package KiokuDB::Serializer::JSON;
BEGIN {
  $KiokuDB::Serializer::JSON::AUTHORITY = 'cpan:NUFFIN';
}
$KiokuDB::Serializer::JSON::VERSION = '0.57';
use Moose;

use namespace::clean -except => 'meta';

with qw(
    KiokuDB::Serializer
    KiokuDB::Backend::Serialize::JSON
);

sub file_extension { "json" }

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__

=pod

=encoding UTF-8

=head1 NAME

KiokuDB::Serializer::JSON

=head1 VERSION

version 0.57

=head1 AUTHOR

Yuval Kogman <nothingmuch@woobling.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Yuval Kogman, Infinity Interactive.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
