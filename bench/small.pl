#!/usr/bin/perl

use strict;
use warnings;

use KiokuDB;
use KiokuDB::Backend::Hash;

$| = 1;

my $f = (require KiokuDB::Test::Fixture::Small)->new;

my $mxsd_hash = KiokuDB->new(
    backend => KiokuDB::Backend::Hash->new,
);

my $q_employee = Search::GIN::Query::Class->new( class => "KiokuDB::Test::Employee" );

sub bench_write {
    for ( 1 .. 20 ) {
        my $t = times;
        until ( times() - $t > 1 ) {
            for ( 1 .. 10 ) {
                my $s = $mxsd_hash->new_scope;
                my @objs = $f->create, $f->create;
                $mxsd_hash->store(@objs);
            }
        }
        $mxsd_hash->backend->clear;
        print ".";
        print " " if $_ % 5 == 0;
    }

    print "done\n";
}

sub bench_read {
    my @ids = do {
        my $s = $mxsd_hash->new_scope;
        $mxsd_hash->store($f->create, $f->create)
    };

    for ( 1 .. 20 ) {
        my $t = times;
        until ( times() - $t > 1 ) {
            for ( 1 .. 250 ) {
                my $s = $mxsd_hash->new_scope;
                my @objs = $mxsd_hash->lookup(@ids);
            }
        }
        print ".";
        print " " if $_ % 5 == 0;
    }

    print "done\n";
}

sub bench_search {
    use KiokuDB::GIN;
    use KiokuDB;

    use KiokuDB::Backend::Hash;

    use Search::GIN::Query::Class;
    use Search::GIN::Extract::Class;

    {
        package MyGIN;
        use Moose;

        extends qw(KiokuDB::Backend::Hash);

        with (
            qw(
            KiokuDB::GIN
            Search::GIN::Driver::Hash
            Search::GIN::Extract::Delegate
            ),
        );

        __PACKAGE__->meta->make_immutable;
    }

    my $gin = MyGIN->new(
        extract => Search::GIN::Extract::Class->new,
        root_only => 0,
    );

    my $dir = KiokuDB->new(
        backend => $gin,
    );

    for ( 1 .. 10 ) {
        my $s = $dir->new_scope;
        $dir->store($f->create);
    }

    my $q_employee = Search::GIN::Query::Class->new( class => "KiokuDB::Test::Employee" );

    for ( 1 .. 20 ) {
        my $t = times;
        until ( times() - $t > 1 ) {
            for ( 1 .. 10 ) {
                my $s = $dir->new_scope;
                $dir->search($q_employee);
            }
        }
        print ".";
        print " " if $_ % 5 == 0;
    }

    print "done\n";
}

#bench_read();
#bench_write();
bench_search();
