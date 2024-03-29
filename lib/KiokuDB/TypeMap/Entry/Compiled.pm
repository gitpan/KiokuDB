package KiokuDB::TypeMap::Entry::Compiled;
BEGIN {
  $KiokuDB::TypeMap::Entry::Compiled::AUTHORITY = 'cpan:NUFFIN';
}
$KiokuDB::TypeMap::Entry::Compiled::VERSION = '0.57';
use Moose;

no warnings 'recursion';

use namespace::clean -except => 'meta';

has [qw(expand_method collapse_method id_method refresh_method)] => (
    isa => "CodeRef|Str",
    is  => "ro",
    required => 1,
);

has class => (
    isa => "Str",
    is  => "ro",
    required => 1,
);

has entry => (
    does => "KiokuDB::TypeMap::Entry",
    is   => "ro",
    required => 1,
);

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__

=pod

=encoding UTF-8

=head1 NAME

KiokuDB::TypeMap::Entry::Compiled

=head1 VERSION

version 0.57

=head1 SYNOPSIS

TODO

=head1 DESCRIPTION

Objects of this class should be returned by L<KiokuDB::TypeMap::Entry/compile>.
You probably shouldn't be using this directly; you may just want to consume
L<KiokuDB::TypeMap::Entry::Std> or something.

=head1 NAME

KiokuDB::TypeMap::Entry::Compiled - Object for storing collapse/expand methods

=head1 ATTRIBUTES

=over 4

=item expand_method

Contains a subroutine reference (or a string, denoting a method name).  It is
called as method on the L<KiokuDB::Linker>.  Takes a L<KiokuDB::Entry> as an
argument, and should return the expanded object.

=item collapse_method

Contains a subroutine reference (or a string, denoting a method name).  It is
called as method on the L<KiokuDB::Collapser>.  Takes the object to
be collapsed as an argument, and should return a L<KiokuDB::Reference>.

=item id_method

Contains a subroutine reference (or a string, denoting a method name).  It is
called as method on the L<KiokuDB::Collapser>.  Takes the object to be
collapsed as an argument, and should return an ID for it .

=item refresh_method

Contains a subroutine reference (or a string, denoting a method name).  It is
called as method on the L<KiokuDB::Linker>.  Takes the object to be refreshed
and its corresponding L<KiokuDB::Entry> as arguments.

=item class

The class for which the methods are being compiled.

=item entry

The L<KiokuDB::TypeMap::Entry> that created this object.

=back

=head1 AUTHOR

Yuval Kogman <nothingmuch@woobling.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Yuval Kogman, Infinity Interactive.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
