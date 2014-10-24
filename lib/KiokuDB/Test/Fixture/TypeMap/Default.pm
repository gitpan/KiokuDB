#!/usr/bin/perl

use utf8;

package KiokuDB::Test::Fixture::TypeMap::Default;
use Moose;

use Encode;
use Test::More;

use KiokuDB::Test::Person;
use KiokuDB::Test::Employee;
use KiokuDB::Test::Company;

use namespace::clean -except => 'meta';

use constant required_backend_roles => qw(TypeMap::Default);

use Tie::RefHash;
use constant HAVE_DATETIME          => eval { require DateTime };
use constant HAVE_URI               => eval { require URI };
use constant HAVE_URI_WITH_BASE     => eval { require URI::WithBase };
use constant HAVE_AUTHEN_PASSPHRASE => eval { require Authen::Passphrase::SaltedDigest };
use constant HAVE_PATH_CLASS        => eval { require Path::Class };
use constant HAVE_IXHASH            => eval { require Tie::IxHash };

with qw(KiokuDB::Test::Fixture);

sub create {
    tie my %refhash, 'Tie::RefHash';

    $refhash{["foo"]} = "bar";

    my %ixhash;
    tie %ixhash, 'Tie::IxHash' if HAVE_IXHASH;
    %ixhash = ( first => 1, second => "yes", third => "maybe", fourth => "a charm" );

    return (
        refhash => \%refhash,
        HAVE_IXHASH            ? ( ixhash => \%ixhash                                           ) : (),
        HAVE_DATETIME          ? ( datetime   => { obj => DateTime->now }                       ) : (),
        HAVE_PATH_CLASS        ? ( path_class => { obj => Path::Class::file('bar', 'foo.txt') } ) : (),
        HAVE_URI               ? ( uri        => { obj => URI->new('http://www.google.com/') }  ) : (),
        HAVE_URI_WITH_BASE     ? (
            with_base  => {
                obj => URI::WithBase->new(
                    URI->new('foo'),
                    URI->new('http://www.google.com/')
                ),
            },
        ) : (),
        HAVE_AUTHEN_PASSPHRASE ? (
            passphrase => {
                obj => Authen::Passphrase::SaltedDigest->new(
                    algorithm => "SHA-1", salt_random => 20,
                    passphrase => "passphrase"
                ),
            },
        ) : (),
    );
}

sub verify {
    my $self = shift;

    {
        my $rh = $self->lookup_ok("refhash");

        is( ref($rh), "HASH", "plain hash" );
        isa_ok( tied(%$rh), "Tie::RefHash", "tied" );

        is_deeply( [ keys %$rh ], [ ["foo"] ], "keys" );

    }

    if ( HAVE_IXHASH ) {
        my $ix = $self->lookup_ok("ixhash");

        is( ref($ix), "HASH", "plain hash" );
        isa_ok( tied(%$ix), "Tie::IxHash", "tied" );

        is_deeply( [ keys %$ix ], [ qw(first second third fourth) ], "key order preserved" );
    }

    if ( HAVE_DATETIME ) {
        my $date = $self->lookup_ok("datetime")->{obj};

        isa_ok( $date, "DateTime" );
    }

    if ( HAVE_URI ) {
        my $uri = $self->lookup_ok("uri")->{obj};

        isa_ok( $uri, "URI" );
        is( "$uri", "http://www.google.com/", "uri" );
    }

    if ( HAVE_URI_WITH_BASE ) {
        my $uri = $self->lookup_ok("with_base")->{obj};

        isa_ok( $uri, "URI::WithBase" );

        isa_ok( $uri->base, "URI" );
    }

    if ( HAVE_PATH_CLASS ) {
        my $file = $self->lookup_ok("path_class")->{obj};

        isa_ok( $file, "Path::Class::Entity" );
        isa_ok( $file, "Path::Class::File" );

        is( $file->basename, "foo.txt", "basename" );
    }
}

__PACKAGE__

__END__
