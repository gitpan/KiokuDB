package KiokuDB::Test::Fixture::TXN::Nested;
BEGIN {
  $KiokuDB::Test::Fixture::TXN::Nested::AUTHORITY = 'cpan:NUFFIN';
}
{
  $KiokuDB::Test::Fixture::TXN::Nested::VERSION = '0.56';
}
use Moose;

use Test::More;
use Test::Exception;
use Try::Tiny;

use namespace::clean -except => 'meta';

extends qw(KiokuDB::Test::Fixture::TXN);

use constant required_backend_roles => qw(TXN TXN::Nested);

sub sort { 151 } # after TXN

sub verify {
    my $self = shift;

    my $l = $self->directory->live_objects;

    {
        {
            my $s = $self->new_scope;

            my $joe = $self->lookup_ok( $self->joe );

            is( $joe->name, "joe", "name attr" );

            my $entry = $l->objects_to_entries($joe);

            isa_ok( $entry, "KiokuDB::Entry" );

            throws_ok {
                $self->txn_do(sub {
                    $joe->name("lalalala");
                    $self->update_ok($joe);

                    my ( $db_entry ) = $self->backend->get( $self->joe );
                    is( $db_entry->data->{name}, "lalalala", "entry written to DB" );

                    my $err;
                    try {
                        $self->txn_do(sub {
                            $joe->name("oi");
                            $self->update_ok($joe);

                            my ( $inner_db_entry ) = $self->backend->get( $self->joe );
                            is( $inner_db_entry->data->{name}, "oi", "entry written to DB" );

                            my $updated_entry = $l->objects_to_entries($joe);

                            isnt( $updated_entry, $entry, "entry updated" );
                            is( $updated_entry->prev->prev, $entry, "parent of parent of updated is orig" );

                            die "foo";
                        });
                    } catch {
                        $err = $_;
                    };

                    my ( $db_entry_rolled_back ) = $self->backend->get( $self->joe );
                    is( $db_entry_rolled_back->data->{name}, "lalalala", "rolled back nested txn" );

                    die $err;
                });
            } qr/foo/, "failed transaction";

            my $updated_entry = $l->objects_to_entries($joe);

            is( $updated_entry, $entry, "entry rolled back" );

            is( $joe->name, "oi", "name attr of object" );

            undef $joe;
        }

        $self->no_live_objects;

        {
            my $s = $self->new_scope;

            my $joe = $self->lookup_ok( $self->joe );

            is( $joe->name, "joe", "name rolled back in DB" );

            undef $joe;
        }

        $self->no_live_objects;
    }
}

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__

=pod

=head1 NAME

KiokuDB::Test::Fixture::TXN::Nested

=head1 VERSION

version 0.56

=head1 AUTHOR

Yuval Kogman <nothingmuch@woobling.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Yuval Kogman, Infinity Interactive.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
