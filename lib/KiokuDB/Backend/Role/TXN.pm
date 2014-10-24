#!/usr/bin/perl

package KiokuDB::Backend::Role::TXN;
use Moose::Role;

use Carp qw(croak);

use namespace::clean -except => 'meta';

requires qw(txn_begin txn_commit txn_rollback);

sub txn_do {
	my ( $self, $coderef, %args ) = @_;

	my @args = @{ $args{args} || [] };

	my ( $commit, $rollback ) = @args{qw(commit rollback)};

	ref $coderef eq 'CODE' or croak '$coderef must be a CODE reference';

	my @txn_args = $self->txn_begin;

	my @result;

	my $wantarray = wantarray; # gotta capture, eval { } has its own

	my ( $success, $err ) = do {
		local $@;

		my $success = eval {
			if ( $wantarray ) {
				@result = $coderef->(@args);
			} elsif( defined $wantarray ) {
				$result[0] = $coderef->(@args);
			} else {
				$coderef->(@args);
			}

			$commit && $commit->();
			$self->txn_commit(@txn_args);

			1;
		};

		( $success, $@ );
	};

	if ( $success ) {
		return wantarray ? @result : $result[0];
	} else {
		my $rollback_exception = do {
			local $@;
			eval { $self->txn_rollback(@txn_args); $rollback && $rollback->() };
			$@;
		};

		if ($rollback_exception) {
			croak "Transaction aborted: $err, rollback failed: $rollback_exception";
		}

		die $err;
	}
}

__PACKAGE__

__END__

=pod

=head1 NAME

KiokuDB::Backend::Role::TXN - Backend level transaction support.

=head1 SYNOPSIS

    package MyBackend;
    use Moose;

    with qw(
        KiokuDB::Backend
        KiokuDB::Backend::Role::TXN
    );

    sub txn_begin { ... }
    sub txn_commit { ... }
    sub txn_rollback { ... }

=head1 DESCRIPTION

This API is inspired by standard database transactions much like you get with
L<DBI>.

This is the low level interface required by L<KiokuDB/txn_do>.


=head1 OPTIONAL METHODS

=over 4

=item txn_do $code, %callbacks

This method should evaluate the code reference in the context of a transaction,
inside an C<eval>. If any errors are caught the transaction should be aborted,
otherwise it should be committed.  This is much like
L<DBIx::Class::Schema/txn_do>.

The C<rollback> callback should be fired when the transaction will be aborted.

=back

=head1 REQUIRED METHODS

=over 4

=item txn_begin [ $parent_txn ]

Begin a new transaction.

This method can return a transaction handle that will later be passed to
C<txn_commit> or C<txn_rollback> as necessary.

The current handle will be passed to nested calls to C<txn_begin>.


=item txn_commit $txn

Commit the transaction.

=item txn_rollback $txn

Rollback the transaction.

=back

=cut
