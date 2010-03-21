# This Makefile is for the KiokuDB extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.55_02 (Revision: 65502) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     BUILD_REQUIRES => {  }
#     EXE_FILES => [q[bin/kioku]]
#     INSTALLDIRS => q[site]
#     NAME => q[KiokuDB]
#     PL_FILES => {  }
#     PREREQ_PM => { Scalar::Util=>q[0], PadWalker=>q[1.9], Data::UUID::LibUUID=>q[0], Scope::Guard=>q[0], Class::MOP=>q[0.94], Tie::ToObject=>q[0], Storable=>q[0], MooseX::YAML=>q[0.04], Data::Visitor=>q[0.24], JSON::XS=>q[2.231], YAML::XS=>q[0.3], IO=>q[1.23], Digest::SHA=>q[0], Hash::Util::FieldHash::Compat=>q[0], Data::Stream::Bulk=>q[0.07], Task::Weaken=>q[0], Moose=>q[0.92], Try::Tiny=>q[0], Test::Exception=>q[0], MooseX::Clone=>q[0.04], Search::GIN=>q[0.03], namespace::clean=>q[0.08], Test::More=>q[0.88], Set::Object=>q[1.26], MooseX::Role::Parameterized=>q[0.1], Path::Class=>q[0], Test::use::ok=>q[0], Module::Pluggable::Object=>q[0], JSON=>q[2.12] }
#     SIGN => q[1]
#     VERSION_FROM => q[lib/KiokuDB.pm]

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/local/lib/perl5/5.10.1/darwin-2level/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS =  
CCDLFLAGS =  
DLEXT = bundle
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = env MACOSX_DEPLOYMENT_TARGET=10.3 cc
LDDLFLAGS =  -bundle -undefined dynamic_lookup -L/usr/local/lib -fstack-protector
LDFLAGS =  -fstack-protector -L/usr/local/lib
LIBC = /usr/lib/libc.dylib
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = darwin
OSVERS = 10.0.0
RANLIB = ranlib
SITELIBEXP = /usr/local/lib/perl5/site_perl/5.10.1
SITEARCHEXP = /usr/local/lib/perl5/site_perl/5.10.1/darwin-2level
SO = dylib
VENDORARCHEXP = 
VENDORLIBEXP = 


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = KiokuDB
NAME_SYM = KiokuDB
VERSION = 0.40
VERSION_MACRO = VERSION
VERSION_SYM = 0_40
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.40
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /usr/local
SITEPREFIX = /usr/local
VENDORPREFIX = 
INSTALLPRIVLIB = /usr/local/lib/perl5/5.10.1
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /usr/local/lib/perl5/site_perl/5.10.1
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = 
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /usr/local/lib/perl5/5.10.1/darwin-2level
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /usr/local/lib/perl5/site_perl/5.10.1/darwin-2level
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = 
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/local/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/local/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = 
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/local/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/local/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = 
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/local/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/local/share/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = 
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/local/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/local/share/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = 
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /usr/local/lib/perl5/5.10.1
PERL_ARCHLIB = /usr/local/lib/perl5/5.10.1/darwin-2level
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/local/lib/perl5/5.10.1/darwin-2level/CORE
PERL = /usr/local/bin/perl
FULLPERL = /usr/local/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /usr/local/lib/perl5/5.10.1/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.55_02
MM_REVISION = 65502

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = KiokuDB
BASEEXT = KiokuDB
PARENT_NAME = 
DLBASE = $(BASEEXT)
VERSION_FROM = lib/KiokuDB.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/KiokuDB.pm \
	lib/KiokuDB/Backend.pm \
	lib/KiokuDB/Backend/Hash.pm \
	lib/KiokuDB/Backend/Role/BinarySafe.pm \
	lib/KiokuDB/Backend/Role/Broken.pm \
	lib/KiokuDB/Backend/Role/Clear.pm \
	lib/KiokuDB/Backend/Role/Query.pm \
	lib/KiokuDB/Backend/Role/Query/Simple.pm \
	lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm \
	lib/KiokuDB/Backend/Role/Scan.pm \
	lib/KiokuDB/Backend/Role/TXN.pm \
	lib/KiokuDB/Backend/Role/TXN/Memory.pm \
	lib/KiokuDB/Backend/Role/TXN/Nested.pm \
	lib/KiokuDB/Backend/Role/UnicodeSafe.pm \
	lib/KiokuDB/Backend/Serialize.pm \
	lib/KiokuDB/Backend/Serialize/Delegate.pm \
	lib/KiokuDB/Backend/Serialize/JSON.pm \
	lib/KiokuDB/Backend/Serialize/JSPON.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm \
	lib/KiokuDB/Backend/Serialize/Storable.pm \
	lib/KiokuDB/Backend/Serialize/YAML.pm \
	lib/KiokuDB/Backend/TypeMap/Default.pm \
	lib/KiokuDB/Class.pm \
	lib/KiokuDB/Collapser.pm \
	lib/KiokuDB/Entry.pm \
	lib/KiokuDB/GC/Naive.pm \
	lib/KiokuDB/GIN.pm \
	lib/KiokuDB/LinkChecker.pm \
	lib/KiokuDB/Linker.pm \
	lib/KiokuDB/LiveObjects.pm \
	lib/KiokuDB/LiveObjects/Scope.pm \
	lib/KiokuDB/LiveObjects/TXNScope.pm \
	lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm \
	lib/KiokuDB/Meta/Attribute/Lazy.pm \
	lib/KiokuDB/Meta/Instance.pm \
	lib/KiokuDB/Reference.pm \
	lib/KiokuDB/Role/API.pm \
	lib/KiokuDB/Role/ID.pm \
	lib/KiokuDB/Role/ID/Content.pm \
	lib/KiokuDB/Role/Immutable.pm \
	lib/KiokuDB/Role/Intrinsic.pm \
	lib/KiokuDB/Role/Scan.pm \
	lib/KiokuDB/Role/UUIDs.pm \
	lib/KiokuDB/Role/UUIDs/SerialIDs.pm \
	lib/KiokuDB/Role/Upgrade/Data.pm \
	lib/KiokuDB/Role/Upgrade/Handlers/Table.pm \
	lib/KiokuDB/Role/Verbosity.pm \
	lib/KiokuDB/Serializer.pm \
	lib/KiokuDB/Set.pm \
	lib/KiokuDB/Set/Deferred.pm \
	lib/KiokuDB/Set/Loaded.pm \
	lib/KiokuDB/Set/Storage.pm \
	lib/KiokuDB/Set/Stored.pm \
	lib/KiokuDB/Set/Transient.pm \
	lib/KiokuDB/Stream/Objects.pm \
	lib/KiokuDB/Test.pm \
	lib/KiokuDB/Thunk.pm \
	lib/KiokuDB/Tutorial.pod \
	lib/KiokuDB/Tutorial/JA.pod \
	lib/KiokuDB/TypeMap.pm \
	lib/KiokuDB/TypeMap/ClassBuilders.pm \
	lib/KiokuDB/TypeMap/Composite.pm \
	lib/KiokuDB/TypeMap/Default.pm \
	lib/KiokuDB/TypeMap/Default/Canonical.pm \
	lib/KiokuDB/TypeMap/Default/Passthrough.pm \
	lib/KiokuDB/TypeMap/Entry.pm \
	lib/KiokuDB/TypeMap/Entry/Alias.pm \
	lib/KiokuDB/TypeMap/Entry/Callback.pm \
	lib/KiokuDB/TypeMap/Entry/MOP.pm \
	lib/KiokuDB/TypeMap/Entry/Naive.pm \
	lib/KiokuDB/TypeMap/Entry/Passthrough.pm \
	lib/KiokuDB/TypeMap/Entry/Set.pm \
	lib/KiokuDB/TypeMap/Entry/StorableHook.pm \
	lib/KiokuDB/TypeMap/Resolver.pm \
	lib/KiokuDB/TypeMap/Shadow.pm \
	lib/KiokuDB/Util.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)
INST_ARCHLIBDIR  = $(INST_ARCHLIB)

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/KiokuDB.pm \
	lib/KiokuDB/Backend.pm \
	lib/KiokuDB/Backend/Hash.pm \
	lib/KiokuDB/Backend/Role/BinarySafe.pm \
	lib/KiokuDB/Backend/Role/Broken.pm \
	lib/KiokuDB/Backend/Role/Clear.pm \
	lib/KiokuDB/Backend/Role/Concurrency/POSIX.pm \
	lib/KiokuDB/Backend/Role/Prefetch.pm \
	lib/KiokuDB/Backend/Role/Query.pm \
	lib/KiokuDB/Backend/Role/Query/GIN.pm \
	lib/KiokuDB/Backend/Role/Query/Simple.pm \
	lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm \
	lib/KiokuDB/Backend/Role/Scan.pm \
	lib/KiokuDB/Backend/Role/TXN.pm \
	lib/KiokuDB/Backend/Role/TXN/Memory.pm \
	lib/KiokuDB/Backend/Role/TXN/Memory/Scan.pm \
	lib/KiokuDB/Backend/Role/TXN/Nested.pm \
	lib/KiokuDB/Backend/Role/UnicodeSafe.pm \
	lib/KiokuDB/Backend/Serialize.pm \
	lib/KiokuDB/Backend/Serialize/Delegate.pm \
	lib/KiokuDB/Backend/Serialize/JSON.pm \
	lib/KiokuDB/Backend/Serialize/JSPON.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm \
	lib/KiokuDB/Backend/Serialize/Memory.pm \
	lib/KiokuDB/Backend/Serialize/Null.pm \
	lib/KiokuDB/Backend/Serialize/Storable.pm \
	lib/KiokuDB/Backend/Serialize/YAML.pm \
	lib/KiokuDB/Backend/TypeMap/Default.pm \
	lib/KiokuDB/Backend/TypeMap/Default/JSON.pm \
	lib/KiokuDB/Backend/TypeMap/Default/Storable.pm \
	lib/KiokuDB/Class.pm \
	lib/KiokuDB/Collapser.pm \
	lib/KiokuDB/Collapser/Buffer.pm \
	lib/KiokuDB/Entry.pm \
	lib/KiokuDB/Entry/Skip.pm \
	lib/KiokuDB/GC/Naive.pm \
	lib/KiokuDB/GC/Naive/Mark.pm \
	lib/KiokuDB/GC/Naive/Sweep.pm \
	lib/KiokuDB/GIN.pm \
	lib/KiokuDB/LinkChecker.pm \
	lib/KiokuDB/LinkChecker/Results.pm \
	lib/KiokuDB/Linker.pm \
	lib/KiokuDB/LiveObjects.pm \
	lib/KiokuDB/LiveObjects/Guard.pm \
	lib/KiokuDB/LiveObjects/Scope.pm \
	lib/KiokuDB/LiveObjects/TXNScope.pm \
	lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm \
	lib/KiokuDB/Meta/Attribute/Lazy.pm \
	lib/KiokuDB/Meta/Instance.pm \
	lib/KiokuDB/Reference.pm \
	lib/KiokuDB/Role/API.pm \
	lib/KiokuDB/Role/ID.pm \
	lib/KiokuDB/Role/ID/Content.pm \
	lib/KiokuDB/Role/ID/Digest.pm \
	lib/KiokuDB/Role/Immutable.pm \
	lib/KiokuDB/Role/Intrinsic.pm \
	lib/KiokuDB/Role/Scan.pm \
	lib/KiokuDB/Role/TypeMap.pm \
	lib/KiokuDB/Role/UUIDs.pm \
	lib/KiokuDB/Role/UUIDs/DataUUID.pm \
	lib/KiokuDB/Role/UUIDs/LibUUID.pm \
	lib/KiokuDB/Role/UUIDs/SerialIDs.pm \
	lib/KiokuDB/Role/Upgrade/Data.pm \
	lib/KiokuDB/Role/Upgrade/Handlers.pm \
	lib/KiokuDB/Role/Upgrade/Handlers/Table.pm \
	lib/KiokuDB/Role/Verbosity.pm \
	lib/KiokuDB/Role/WithDigest.pm \
	lib/KiokuDB/Serializer.pm \
	lib/KiokuDB/Serializer/JSON.pm \
	lib/KiokuDB/Serializer/Memory.pm \
	lib/KiokuDB/Serializer/Storable.pm \
	lib/KiokuDB/Serializer/YAML.pm \
	lib/KiokuDB/Set.pm \
	lib/KiokuDB/Set/Base.pm \
	lib/KiokuDB/Set/Deferred.pm \
	lib/KiokuDB/Set/Loaded.pm \
	lib/KiokuDB/Set/Storage.pm \
	lib/KiokuDB/Set/Stored.pm \
	lib/KiokuDB/Set/Transient.pm \
	lib/KiokuDB/Stream/Objects.pm \
	lib/KiokuDB/Test.pm \
	lib/KiokuDB/Test/Company.pm \
	lib/KiokuDB/Test/Digested.pm \
	lib/KiokuDB/Test/Employee.pm \
	lib/KiokuDB/Test/Fixture.pm \
	lib/KiokuDB/Test/Fixture/Binary.pm \
	lib/KiokuDB/Test/Fixture/CAS.pm \
	lib/KiokuDB/Test/Fixture/Clear.pm \
	lib/KiokuDB/Test/Fixture/Concurrency.pm \
	lib/KiokuDB/Test/Fixture/GIN/Class.pm \
	lib/KiokuDB/Test/Fixture/ObjectGraph.pm \
	lib/KiokuDB/Test/Fixture/Overwrite.pm \
	lib/KiokuDB/Test/Fixture/Refresh.pm \
	lib/KiokuDB/Test/Fixture/RootSet.pm \
	lib/KiokuDB/Test/Fixture/Scan.pm \
	lib/KiokuDB/Test/Fixture/SimpleSearch.pm \
	lib/KiokuDB/Test/Fixture/Small.pm \
	lib/KiokuDB/Test/Fixture/TXN.pm \
	lib/KiokuDB/Test/Fixture/TXN/Nested.pm \
	lib/KiokuDB/Test/Fixture/TXN/Scan.pm \
	lib/KiokuDB/Test/Fixture/TypeMap/Default.pm \
	lib/KiokuDB/Test/Fixture/Unicode.pm \
	lib/KiokuDB/Test/Person.pm \
	lib/KiokuDB/Thunk.pm \
	lib/KiokuDB/Tutorial.pod \
	lib/KiokuDB/Tutorial/JA.pod \
	lib/KiokuDB/TypeMap.pm \
	lib/KiokuDB/TypeMap/ClassBuilders.pm \
	lib/KiokuDB/TypeMap/Composite.pm \
	lib/KiokuDB/TypeMap/Default.pm \
	lib/KiokuDB/TypeMap/Default/Canonical.pm \
	lib/KiokuDB/TypeMap/Default/JSON.pm \
	lib/KiokuDB/TypeMap/Default/Passthrough.pm \
	lib/KiokuDB/TypeMap/Default/Storable.pm \
	lib/KiokuDB/TypeMap/Entry.pm \
	lib/KiokuDB/TypeMap/Entry/Alias.pm \
	lib/KiokuDB/TypeMap/Entry/Callback.pm \
	lib/KiokuDB/TypeMap/Entry/Closure.pm \
	lib/KiokuDB/TypeMap/Entry/Compiled.pm \
	lib/KiokuDB/TypeMap/Entry/JSON/Scalar.pm \
	lib/KiokuDB/TypeMap/Entry/MOP.pm \
	lib/KiokuDB/TypeMap/Entry/Naive.pm \
	lib/KiokuDB/TypeMap/Entry/Passthrough.pm \
	lib/KiokuDB/TypeMap/Entry/Ref.pm \
	lib/KiokuDB/TypeMap/Entry/Set.pm \
	lib/KiokuDB/TypeMap/Entry/Std.pm \
	lib/KiokuDB/TypeMap/Entry/Std/Compile.pm \
	lib/KiokuDB/TypeMap/Entry/Std/Expand.pm \
	lib/KiokuDB/TypeMap/Entry/Std/ID.pm \
	lib/KiokuDB/TypeMap/Entry/Std/Intrinsic.pm \
	lib/KiokuDB/TypeMap/Entry/StorableHook.pm \
	lib/KiokuDB/TypeMap/Resolver.pm \
	lib/KiokuDB/TypeMap/Shadow.pm \
	lib/KiokuDB/Util.pm \
	lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/DoNotSerialize.pm \
	lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/Lazy.pm

PM_TO_BLIB = lib/KiokuDB/Role/Upgrade/Handlers.pm \
	blib/lib/KiokuDB/Role/Upgrade/Handlers.pm \
	lib/KiokuDB/Test/Fixture/Small.pm \
	blib/lib/KiokuDB/Test/Fixture/Small.pm \
	lib/KiokuDB/Role/ID/Content.pm \
	blib/lib/KiokuDB/Role/ID/Content.pm \
	lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/DoNotSerialize.pm \
	blib/lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/DoNotSerialize.pm \
	lib/KiokuDB/Test/Fixture/TXN/Nested.pm \
	blib/lib/KiokuDB/Test/Fixture/TXN/Nested.pm \
	lib/KiokuDB/Backend/Role/BinarySafe.pm \
	blib/lib/KiokuDB/Backend/Role/BinarySafe.pm \
	lib/KiokuDB/Backend/Role/Query/Simple.pm \
	blib/lib/KiokuDB/Backend/Role/Query/Simple.pm \
	lib/KiokuDB/Role/TypeMap.pm \
	blib/lib/KiokuDB/Role/TypeMap.pm \
	lib/KiokuDB/Role/UUIDs.pm \
	blib/lib/KiokuDB/Role/UUIDs.pm \
	lib/KiokuDB/Backend/Role/Query.pm \
	blib/lib/KiokuDB/Backend/Role/Query.pm \
	lib/KiokuDB/Role/Immutable.pm \
	blib/lib/KiokuDB/Role/Immutable.pm \
	lib/KiokuDB/Backend/TypeMap/Default.pm \
	blib/lib/KiokuDB/Backend/TypeMap/Default.pm \
	lib/KiokuDB/TypeMap/Default/Canonical.pm \
	blib/lib/KiokuDB/TypeMap/Default/Canonical.pm \
	lib/KiokuDB/Backend/Serialize/JSPON.pm \
	blib/lib/KiokuDB/Backend/Serialize/JSPON.pm \
	lib/KiokuDB/Backend.pm \
	blib/lib/KiokuDB/Backend.pm \
	lib/KiokuDB/Set/Stored.pm \
	blib/lib/KiokuDB/Set/Stored.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm \
	blib/lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm \
	lib/KiokuDB/Test/Fixture/Concurrency.pm \
	blib/lib/KiokuDB/Test/Fixture/Concurrency.pm \
	lib/KiokuDB/Backend/Role/Query/GIN.pm \
	blib/lib/KiokuDB/Backend/Role/Query/GIN.pm \
	lib/KiokuDB/Test/Fixture/Clear.pm \
	blib/lib/KiokuDB/Test/Fixture/Clear.pm \
	lib/KiokuDB/Backend/TypeMap/Default/Storable.pm \
	blib/lib/KiokuDB/Backend/TypeMap/Default/Storable.pm \
	lib/KiokuDB/Backend/Serialize.pm \
	blib/lib/KiokuDB/Backend/Serialize.pm \
	lib/KiokuDB/TypeMap/Default/Passthrough.pm \
	blib/lib/KiokuDB/TypeMap/Default/Passthrough.pm \
	lib/KiokuDB/Serializer/YAML.pm \
	blib/lib/KiokuDB/Serializer/YAML.pm \
	lib/KiokuDB/Test/Digested.pm \
	blib/lib/KiokuDB/Test/Digested.pm \
	lib/KiokuDB/Serializer/Memory.pm \
	blib/lib/KiokuDB/Serializer/Memory.pm \
	lib/KiokuDB/TypeMap/Entry/Std/ID.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Std/ID.pm \
	lib/KiokuDB/Backend/Role/Scan.pm \
	blib/lib/KiokuDB/Backend/Role/Scan.pm \
	lib/KiokuDB/Backend/Role/TXN.pm \
	blib/lib/KiokuDB/Backend/Role/TXN.pm \
	lib/KiokuDB/Backend/Role/Concurrency/POSIX.pm \
	blib/lib/KiokuDB/Backend/Role/Concurrency/POSIX.pm \
	lib/KiokuDB/TypeMap/Entry/Std/Intrinsic.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Std/Intrinsic.pm \
	lib/KiokuDB/TypeMap/Entry/Std.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Std.pm \
	lib/KiokuDB/Test/Fixture/GIN/Class.pm \
	blib/lib/KiokuDB/Test/Fixture/GIN/Class.pm \
	lib/KiokuDB/TypeMap.pm \
	blib/lib/KiokuDB/TypeMap.pm \
	lib/KiokuDB/Role/UUIDs/SerialIDs.pm \
	blib/lib/KiokuDB/Role/UUIDs/SerialIDs.pm \
	lib/KiokuDB/LinkChecker/Results.pm \
	blib/lib/KiokuDB/LinkChecker/Results.pm \
	lib/KiokuDB/Test/Fixture/ObjectGraph.pm \
	blib/lib/KiokuDB/Test/Fixture/ObjectGraph.pm \
	lib/KiokuDB/Set/Transient.pm \
	blib/lib/KiokuDB/Set/Transient.pm \
	lib/KiokuDB/Role/Intrinsic.pm \
	blib/lib/KiokuDB/Role/Intrinsic.pm \
	lib/KiokuDB/TypeMap/Default/JSON.pm \
	blib/lib/KiokuDB/TypeMap/Default/JSON.pm \
	lib/KiokuDB/Tutorial/JA.pod \
	blib/lib/KiokuDB/Tutorial/JA.pod \
	lib/KiokuDB/Class.pm \
	blib/lib/KiokuDB/Class.pm \
	lib/KiokuDB/GIN.pm \
	blib/lib/KiokuDB/GIN.pm \
	lib/KiokuDB/Role/Upgrade/Handlers/Table.pm \
	blib/lib/KiokuDB/Role/Upgrade/Handlers/Table.pm \
	lib/KiokuDB/Util.pm \
	blib/lib/KiokuDB/Util.pm \
	lib/KiokuDB/Role/Verbosity.pm \
	blib/lib/KiokuDB/Role/Verbosity.pm \
	lib/KiokuDB/GC/Naive/Sweep.pm \
	blib/lib/KiokuDB/GC/Naive/Sweep.pm \
	lib/KiokuDB/TypeMap/Entry/Alias.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Alias.pm \
	lib/KiokuDB/Test.pm \
	blib/lib/KiokuDB/Test.pm \
	lib/KiokuDB/Backend/Role/TXN/Memory/Scan.pm \
	blib/lib/KiokuDB/Backend/Role/TXN/Memory/Scan.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm \
	blib/lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm \
	lib/KiokuDB/Role/UUIDs/LibUUID.pm \
	blib/lib/KiokuDB/Role/UUIDs/LibUUID.pm \
	lib/KiokuDB/Test/Fixture/TXN.pm \
	blib/lib/KiokuDB/Test/Fixture/TXN.pm \
	lib/KiokuDB/LiveObjects.pm \
	blib/lib/KiokuDB/LiveObjects.pm \
	lib/KiokuDB/TypeMap/Entry/Naive.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Naive.pm \
	lib/KiokuDB/Backend/Role/TXN/Nested.pm \
	blib/lib/KiokuDB/Backend/Role/TXN/Nested.pm \
	lib/KiokuDB/Backend/Role/Broken.pm \
	blib/lib/KiokuDB/Backend/Role/Broken.pm \
	lib/KiokuDB/GC/Naive.pm \
	blib/lib/KiokuDB/GC/Naive.pm \
	lib/KiokuDB/Backend/Hash.pm \
	blib/lib/KiokuDB/Backend/Hash.pm \
	lib/KiokuDB/TypeMap/Resolver.pm \
	blib/lib/KiokuDB/TypeMap/Resolver.pm \
	lib/KiokuDB/Test/Fixture/Overwrite.pm \
	blib/lib/KiokuDB/Test/Fixture/Overwrite.pm \
	lib/KiokuDB/Backend/Serialize/Null.pm \
	blib/lib/KiokuDB/Backend/Serialize/Null.pm \
	lib/KiokuDB/Backend/Serialize/YAML.pm \
	blib/lib/KiokuDB/Backend/Serialize/YAML.pm \
	lib/KiokuDB/Serializer/Storable.pm \
	blib/lib/KiokuDB/Serializer/Storable.pm \
	lib/KiokuDB/TypeMap/ClassBuilders.pm \
	blib/lib/KiokuDB/TypeMap/ClassBuilders.pm \
	lib/KiokuDB/Role/ID.pm \
	blib/lib/KiokuDB/Role/ID.pm \
	lib/KiokuDB/Linker.pm \
	blib/lib/KiokuDB/Linker.pm \
	lib/KiokuDB/Test/Fixture/CAS.pm \
	blib/lib/KiokuDB/Test/Fixture/CAS.pm \
	lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm \
	blib/lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm \
	lib/KiokuDB/TypeMap/Entry.pm \
	blib/lib/KiokuDB/TypeMap/Entry.pm \
	lib/KiokuDB/LiveObjects/TXNScope.pm \
	blib/lib/KiokuDB/LiveObjects/TXNScope.pm \
	lib/KiokuDB/Test/Fixture/Scan.pm \
	blib/lib/KiokuDB/Test/Fixture/Scan.pm \
	lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm \
	blib/lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm \
	lib/KiokuDB/TypeMap/Entry/StorableHook.pm \
	blib/lib/KiokuDB/TypeMap/Entry/StorableHook.pm \
	lib/KiokuDB/Test/Fixture/Refresh.pm \
	blib/lib/KiokuDB/Test/Fixture/Refresh.pm \
	lib/KiokuDB/GC/Naive/Mark.pm \
	blib/lib/KiokuDB/GC/Naive/Mark.pm \
	lib/KiokuDB/TypeMap/Entry/JSON/Scalar.pm \
	blib/lib/KiokuDB/TypeMap/Entry/JSON/Scalar.pm \
	lib/KiokuDB/Backend/Serialize/Memory.pm \
	blib/lib/KiokuDB/Backend/Serialize/Memory.pm \
	lib/KiokuDB/Test/Fixture.pm \
	blib/lib/KiokuDB/Test/Fixture.pm \
	lib/KiokuDB/Test/Fixture/SimpleSearch.pm \
	blib/lib/KiokuDB/Test/Fixture/SimpleSearch.pm \
	lib/KiokuDB/Backend/Role/Prefetch.pm \
	blib/lib/KiokuDB/Backend/Role/Prefetch.pm \
	lib/KiokuDB/Role/API.pm \
	blib/lib/KiokuDB/Role/API.pm \
	lib/KiokuDB/TypeMap/Default.pm \
	blib/lib/KiokuDB/TypeMap/Default.pm \
	lib/KiokuDB/Role/WithDigest.pm \
	blib/lib/KiokuDB/Role/WithDigest.pm \
	lib/KiokuDB/Entry.pm \
	blib/lib/KiokuDB/Entry.pm \
	lib/KiokuDB/Backend/TypeMap/Default/JSON.pm \
	blib/lib/KiokuDB/Backend/TypeMap/Default/JSON.pm \
	lib/KiokuDB/Reference.pm \
	blib/lib/KiokuDB/Reference.pm \
	lib/KiokuDB/Role/UUIDs/DataUUID.pm \
	blib/lib/KiokuDB/Role/UUIDs/DataUUID.pm \
	lib/KiokuDB/Backend/Serialize/Storable.pm \
	blib/lib/KiokuDB/Backend/Serialize/Storable.pm \
	lib/KiokuDB/Role/Scan.pm \
	blib/lib/KiokuDB/Role/Scan.pm \
	lib/KiokuDB/Test/Fixture/Binary.pm \
	blib/lib/KiokuDB/Test/Fixture/Binary.pm \
	lib/KiokuDB/TypeMap/Entry/Closure.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Closure.pm \
	lib/KiokuDB/Meta/Instance.pm \
	blib/lib/KiokuDB/Meta/Instance.pm \
	lib/KiokuDB/Test/Fixture/TypeMap/Default.pm \
	blib/lib/KiokuDB/Test/Fixture/TypeMap/Default.pm \
	lib/KiokuDB/Serializer.pm \
	blib/lib/KiokuDB/Serializer.pm \
	lib/KiokuDB/Backend/Role/UnicodeSafe.pm \
	blib/lib/KiokuDB/Backend/Role/UnicodeSafe.pm \
	lib/KiokuDB/Set/Deferred.pm \
	blib/lib/KiokuDB/Set/Deferred.pm \
	lib/KiokuDB/Serializer/JSON.pm \
	blib/lib/KiokuDB/Serializer/JSON.pm \
	lib/KiokuDB/Set/Storage.pm \
	blib/lib/KiokuDB/Set/Storage.pm \
	lib/KiokuDB/Entry/Skip.pm \
	blib/lib/KiokuDB/Entry/Skip.pm \
	lib/KiokuDB/LiveObjects/Scope.pm \
	blib/lib/KiokuDB/LiveObjects/Scope.pm \
	lib/KiokuDB.pm \
	blib/lib/KiokuDB.pm \
	lib/KiokuDB/Test/Fixture/RootSet.pm \
	blib/lib/KiokuDB/Test/Fixture/RootSet.pm \
	lib/KiokuDB/Set/Base.pm \
	blib/lib/KiokuDB/Set/Base.pm \
	lib/KiokuDB/TypeMap/Entry/Ref.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Ref.pm \
	lib/KiokuDB/Thunk.pm \
	blib/lib/KiokuDB/Thunk.pm \
	lib/KiokuDB/TypeMap/Composite.pm \
	blib/lib/KiokuDB/TypeMap/Composite.pm \
	lib/KiokuDB/Backend/Role/TXN/Memory.pm \
	blib/lib/KiokuDB/Backend/Role/TXN/Memory.pm \
	lib/KiokuDB/Set/Loaded.pm \
	blib/lib/KiokuDB/Set/Loaded.pm \
	lib/KiokuDB/TypeMap/Entry/Passthrough.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Passthrough.pm \
	lib/KiokuDB/TypeMap/Default/Storable.pm \
	blib/lib/KiokuDB/TypeMap/Default/Storable.pm \
	lib/KiokuDB/TypeMap/Entry/Std/Compile.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Std/Compile.pm \
	lib/KiokuDB/Collapser.pm \
	blib/lib/KiokuDB/Collapser.pm \
	lib/KiokuDB/LinkChecker.pm \
	blib/lib/KiokuDB/LinkChecker.pm \
	lib/KiokuDB/Set.pm \
	blib/lib/KiokuDB/Set.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm \
	blib/lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm \
	lib/KiokuDB/Tutorial.pod \
	blib/lib/KiokuDB/Tutorial.pod \
	lib/KiokuDB/Collapser/Buffer.pm \
	blib/lib/KiokuDB/Collapser/Buffer.pm \
	lib/KiokuDB/Test/Company.pm \
	blib/lib/KiokuDB/Test/Company.pm \
	lib/KiokuDB/Test/Fixture/Unicode.pm \
	blib/lib/KiokuDB/Test/Fixture/Unicode.pm \
	lib/KiokuDB/Role/ID/Digest.pm \
	blib/lib/KiokuDB/Role/ID/Digest.pm \
	lib/KiokuDB/TypeMap/Entry/Compiled.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Compiled.pm \
	lib/KiokuDB/TypeMap/Entry/Set.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Set.pm \
	lib/KiokuDB/Meta/Attribute/Lazy.pm \
	blib/lib/KiokuDB/Meta/Attribute/Lazy.pm \
	lib/KiokuDB/LiveObjects/Guard.pm \
	blib/lib/KiokuDB/LiveObjects/Guard.pm \
	lib/KiokuDB/Backend/Serialize/JSON.pm \
	blib/lib/KiokuDB/Backend/Serialize/JSON.pm \
	lib/KiokuDB/TypeMap/Entry/Std/Expand.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Std/Expand.pm \
	lib/KiokuDB/Backend/Serialize/Delegate.pm \
	blib/lib/KiokuDB/Backend/Serialize/Delegate.pm \
	lib/KiokuDB/Test/Person.pm \
	blib/lib/KiokuDB/Test/Person.pm \
	lib/KiokuDB/Backend/Role/Clear.pm \
	blib/lib/KiokuDB/Backend/Role/Clear.pm \
	lib/KiokuDB/Role/Upgrade/Data.pm \
	blib/lib/KiokuDB/Role/Upgrade/Data.pm \
	lib/KiokuDB/Test/Employee.pm \
	blib/lib/KiokuDB/Test/Employee.pm \
	lib/KiokuDB/Test/Fixture/TXN/Scan.pm \
	blib/lib/KiokuDB/Test/Fixture/TXN/Scan.pm \
	lib/KiokuDB/TypeMap/Shadow.pm \
	blib/lib/KiokuDB/TypeMap/Shadow.pm \
	lib/KiokuDB/Stream/Objects.pm \
	blib/lib/KiokuDB/Stream/Objects.pm \
	lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/Lazy.pm \
	blib/lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/Lazy.pm \
	lib/KiokuDB/TypeMap/Entry/Callback.pm \
	blib/lib/KiokuDB/TypeMap/Entry/Callback.pm \
	lib/KiokuDB/TypeMap/Entry/MOP.pm \
	blib/lib/KiokuDB/TypeMap/Entry/MOP.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.55_02
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = COPY_EXTENDED_ATTRIBUTES_DISABLE=1 COPYFILE_DISABLE=1 tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = KiokuDB
DISTVNAME = KiokuDB-0.40


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/KiokuDB/Backend/Serialize/YAML.pm \
	lib/KiokuDB/TypeMap/ClassBuilders.pm \
	lib/KiokuDB/Role/ID.pm \
	lib/KiokuDB/Linker.pm \
	lib/KiokuDB/Role/ID/Content.pm \
	lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm \
	lib/KiokuDB/TypeMap/Entry.pm \
	lib/KiokuDB/LiveObjects/TXNScope.pm \
	lib/KiokuDB/Backend/Role/BinarySafe.pm \
	lib/KiokuDB/Backend/Role/Query/Simple.pm \
	lib/KiokuDB/Role/UUIDs.pm \
	lib/KiokuDB/Backend/Role/Query.pm \
	lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm \
	lib/KiokuDB/TypeMap/Entry/StorableHook.pm \
	lib/KiokuDB/Role/Immutable.pm \
	lib/KiokuDB/Backend/TypeMap/Default.pm \
	lib/KiokuDB/TypeMap/Default/Canonical.pm \
	lib/KiokuDB/Backend/Serialize/JSPON.pm \
	lib/KiokuDB/Backend.pm \
	lib/KiokuDB/TypeMap/Default.pm \
	lib/KiokuDB/Role/API.pm \
	lib/KiokuDB/Set/Stored.pm \
	lib/KiokuDB/Entry.pm \
	lib/KiokuDB/Reference.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm \
	lib/KiokuDB/Role/Scan.pm \
	lib/KiokuDB/Backend/Serialize/Storable.pm \
	lib/KiokuDB/Meta/Instance.pm \
	lib/KiokuDB/Serializer.pm \
	lib/KiokuDB/Set/Deferred.pm \
	lib/KiokuDB/Backend/Role/UnicodeSafe.pm \
	lib/KiokuDB/Set/Storage.pm \
	lib/KiokuDB/LiveObjects/Scope.pm \
	lib/KiokuDB/Backend/Serialize.pm \
	lib/KiokuDB.pm \
	lib/KiokuDB/TypeMap/Default/Passthrough.pm \
	lib/KiokuDB/Thunk.pm \
	lib/KiokuDB/TypeMap/Composite.pm \
	lib/KiokuDB/Backend/Role/TXN/Memory.pm \
	lib/KiokuDB/Set/Loaded.pm \
	lib/KiokuDB/TypeMap/Entry/Passthrough.pm \
	lib/KiokuDB/Backend/Role/Scan.pm \
	lib/KiokuDB/Backend/Role/TXN.pm \
	lib/KiokuDB/Collapser.pm \
	lib/KiokuDB/LinkChecker.pm \
	lib/KiokuDB/Set.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm \
	lib/KiokuDB/Tutorial.pod \
	lib/KiokuDB/TypeMap.pm \
	lib/KiokuDB/Role/UUIDs/SerialIDs.pm \
	lib/KiokuDB/Role/Intrinsic.pm \
	lib/KiokuDB/Set/Transient.pm \
	lib/KiokuDB/Class.pm \
	lib/KiokuDB/Tutorial/JA.pod \
	lib/KiokuDB/GIN.pm \
	lib/KiokuDB/Util.pm \
	lib/KiokuDB/Role/Upgrade/Handlers/Table.pm \
	lib/KiokuDB/Role/Verbosity.pm \
	lib/KiokuDB/Test.pm \
	lib/KiokuDB/TypeMap/Entry/Alias.pm \
	lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm \
	lib/KiokuDB/TypeMap/Entry/Set.pm \
	lib/KiokuDB/LiveObjects.pm \
	lib/KiokuDB/Meta/Attribute/Lazy.pm \
	lib/KiokuDB/TypeMap/Entry/Naive.pm \
	lib/KiokuDB/Backend/Role/TXN/Nested.pm \
	lib/KiokuDB/Backend/Serialize/JSON.pm \
	lib/KiokuDB/GC/Naive.pm \
	lib/KiokuDB/Backend/Role/Broken.pm \
	lib/KiokuDB/Backend/Serialize/Delegate.pm \
	lib/KiokuDB/Backend/Role/Clear.pm \
	lib/KiokuDB/Role/Upgrade/Data.pm \
	lib/KiokuDB/Backend/Hash.pm \
	lib/KiokuDB/TypeMap/Shadow.pm \
	lib/KiokuDB/Stream/Objects.pm \
	lib/KiokuDB/TypeMap/Resolver.pm \
	lib/KiokuDB/TypeMap/Entry/Callback.pm \
	lib/KiokuDB/TypeMap/Entry/MOP.pm
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/KiokuDB/Backend/Serialize/YAML.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::YAML.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/ClassBuilders.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::ClassBuilders.$(MAN3EXT) \
	  lib/KiokuDB/Role/ID.pm $(INST_MAN3DIR)/KiokuDB::Role::ID.$(MAN3EXT) \
	  lib/KiokuDB/Linker.pm $(INST_MAN3DIR)/KiokuDB::Linker.$(MAN3EXT) \
	  lib/KiokuDB/Role/ID/Content.pm $(INST_MAN3DIR)/KiokuDB::Role::ID::Content.$(MAN3EXT) \
	  lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm $(INST_MAN3DIR)/KiokuDB::Meta::Attribute::DoNotSerialize.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry.$(MAN3EXT) \
	  lib/KiokuDB/LiveObjects/TXNScope.pm $(INST_MAN3DIR)/KiokuDB::LiveObjects::TXNScope.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/BinarySafe.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::BinarySafe.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/Query/Simple.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::Query::Simple.$(MAN3EXT) \
	  lib/KiokuDB/Role/UUIDs.pm $(INST_MAN3DIR)/KiokuDB::Role::UUIDs.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/Query.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::Query.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::Query::Simple::Linear.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry/StorableHook.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry::StorableHook.$(MAN3EXT) \
	  lib/KiokuDB/Role/Immutable.pm $(INST_MAN3DIR)/KiokuDB::Role::Immutable.$(MAN3EXT) \
	  lib/KiokuDB/Backend/TypeMap/Default.pm $(INST_MAN3DIR)/KiokuDB::Backend::TypeMap::Default.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Default/Canonical.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Default::Canonical.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize/JSPON.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::JSPON.$(MAN3EXT) \
	  lib/KiokuDB/Backend.pm $(INST_MAN3DIR)/KiokuDB::Backend.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Default.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Default.$(MAN3EXT) \
	  lib/KiokuDB/Role/API.pm $(INST_MAN3DIR)/KiokuDB::Role::API.$(MAN3EXT) \
	  lib/KiokuDB/Set/Stored.pm $(INST_MAN3DIR)/KiokuDB::Set::Stored.$(MAN3EXT) \
	  lib/KiokuDB/Entry.pm $(INST_MAN3DIR)/KiokuDB::Entry.$(MAN3EXT) \
	  lib/KiokuDB/Reference.pm $(INST_MAN3DIR)/KiokuDB::Reference.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::JSPON::Expander.$(MAN3EXT) \
	  lib/KiokuDB/Role/Scan.pm $(INST_MAN3DIR)/KiokuDB::Role::Scan.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize/Storable.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::Storable.$(MAN3EXT) \
	  lib/KiokuDB/Meta/Instance.pm $(INST_MAN3DIR)/KiokuDB::Meta::Instance.$(MAN3EXT) \
	  lib/KiokuDB/Serializer.pm $(INST_MAN3DIR)/KiokuDB::Serializer.$(MAN3EXT) \
	  lib/KiokuDB/Set/Deferred.pm $(INST_MAN3DIR)/KiokuDB::Set::Deferred.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/UnicodeSafe.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::UnicodeSafe.$(MAN3EXT) \
	  lib/KiokuDB/Set/Storage.pm $(INST_MAN3DIR)/KiokuDB::Set::Storage.$(MAN3EXT) \
	  lib/KiokuDB/LiveObjects/Scope.pm $(INST_MAN3DIR)/KiokuDB::LiveObjects::Scope.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize.$(MAN3EXT) \
	  lib/KiokuDB.pm $(INST_MAN3DIR)/KiokuDB.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Default/Passthrough.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Default::Passthrough.$(MAN3EXT) \
	  lib/KiokuDB/Thunk.pm $(INST_MAN3DIR)/KiokuDB::Thunk.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Composite.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Composite.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/TXN/Memory.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::TXN::Memory.$(MAN3EXT) \
	  lib/KiokuDB/Set/Loaded.pm $(INST_MAN3DIR)/KiokuDB::Set::Loaded.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry/Passthrough.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry::Passthrough.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/Scan.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::Scan.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/TXN.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::TXN.$(MAN3EXT) \
	  lib/KiokuDB/Collapser.pm $(INST_MAN3DIR)/KiokuDB::Collapser.$(MAN3EXT) \
	  lib/KiokuDB/LinkChecker.pm $(INST_MAN3DIR)/KiokuDB::LinkChecker.$(MAN3EXT) \
	  lib/KiokuDB/Set.pm $(INST_MAN3DIR)/KiokuDB::Set.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::JSPON::Collapser.$(MAN3EXT) \
	  lib/KiokuDB/Tutorial.pod $(INST_MAN3DIR)/KiokuDB::Tutorial.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap.pm $(INST_MAN3DIR)/KiokuDB::TypeMap.$(MAN3EXT) \
	  lib/KiokuDB/Role/UUIDs/SerialIDs.pm $(INST_MAN3DIR)/KiokuDB::Role::UUIDs::SerialIDs.$(MAN3EXT) \
	  lib/KiokuDB/Role/Intrinsic.pm $(INST_MAN3DIR)/KiokuDB::Role::Intrinsic.$(MAN3EXT) \
	  lib/KiokuDB/Set/Transient.pm $(INST_MAN3DIR)/KiokuDB::Set::Transient.$(MAN3EXT) \
	  lib/KiokuDB/Class.pm $(INST_MAN3DIR)/KiokuDB::Class.$(MAN3EXT) \
	  lib/KiokuDB/Tutorial/JA.pod $(INST_MAN3DIR)/KiokuDB::Tutorial::JA.$(MAN3EXT) \
	  lib/KiokuDB/GIN.pm $(INST_MAN3DIR)/KiokuDB::GIN.$(MAN3EXT) \
	  lib/KiokuDB/Util.pm $(INST_MAN3DIR)/KiokuDB::Util.$(MAN3EXT) \
	  lib/KiokuDB/Role/Upgrade/Handlers/Table.pm $(INST_MAN3DIR)/KiokuDB::Role::Upgrade::Handlers::Table.$(MAN3EXT) \
	  lib/KiokuDB/Role/Verbosity.pm $(INST_MAN3DIR)/KiokuDB::Role::Verbosity.$(MAN3EXT) \
	  lib/KiokuDB/Test.pm $(INST_MAN3DIR)/KiokuDB::Test.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry/Alias.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry::Alias.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::JSPON::Converter.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry/Set.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry::Set.$(MAN3EXT) \
	  lib/KiokuDB/LiveObjects.pm $(INST_MAN3DIR)/KiokuDB::LiveObjects.$(MAN3EXT) \
	  lib/KiokuDB/Meta/Attribute/Lazy.pm $(INST_MAN3DIR)/KiokuDB::Meta::Attribute::Lazy.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry/Naive.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry::Naive.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/TXN/Nested.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::TXN::Nested.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize/JSON.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::JSON.$(MAN3EXT) \
	  lib/KiokuDB/GC/Naive.pm $(INST_MAN3DIR)/KiokuDB::GC::Naive.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/Broken.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::Broken.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Serialize/Delegate.pm $(INST_MAN3DIR)/KiokuDB::Backend::Serialize::Delegate.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Role/Clear.pm $(INST_MAN3DIR)/KiokuDB::Backend::Role::Clear.$(MAN3EXT) \
	  lib/KiokuDB/Role/Upgrade/Data.pm $(INST_MAN3DIR)/KiokuDB::Role::Upgrade::Data.$(MAN3EXT) \
	  lib/KiokuDB/Backend/Hash.pm $(INST_MAN3DIR)/KiokuDB::Backend::Hash.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Shadow.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Shadow.$(MAN3EXT) \
	  lib/KiokuDB/Stream/Objects.pm $(INST_MAN3DIR)/KiokuDB::Stream::Objects.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Resolver.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Resolver.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry/Callback.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry::Callback.$(MAN3EXT) \
	  lib/KiokuDB/TypeMap/Entry/MOP.pm $(INST_MAN3DIR)/KiokuDB::TypeMap::Entry::MOP.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

EXE_FILES = bin/kioku

pure_all :: $(INST_SCRIPT)/kioku
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/kioku 

$(INST_SCRIPT)/kioku : bin/kioku $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/kioku
	$(CP) bin/kioku $(INST_SCRIPT)/kioku
	$(FIXIN) $(INST_SCRIPT)/kioku
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/kioku



# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts core.[0-9][0-9][0-9][0-9] \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  perl $(BASEEXT).def \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '--- #YAML:1.0' > META_new.yml
	$(NOECHO) $(ECHO) 'name:               KiokuDB' >> META_new.yml
	$(NOECHO) $(ECHO) 'version:            0.40' >> META_new.yml
	$(NOECHO) $(ECHO) 'abstract:           ~' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:  []' >> META_new.yml
	$(NOECHO) $(ECHO) 'license:            unknown' >> META_new.yml
	$(NOECHO) $(ECHO) 'distribution_type:  module' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    ExtUtils::MakeMaker:  0' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    ExtUtils::MakeMaker:  0' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    Class::MOP:           0.94' >> META_new.yml
	$(NOECHO) $(ECHO) '    Data::Stream::Bulk:   0.07' >> META_new.yml
	$(NOECHO) $(ECHO) '    Data::UUID::LibUUID:  0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Data::Visitor:        0.24' >> META_new.yml
	$(NOECHO) $(ECHO) '    Digest::SHA:          0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Hash::Util::FieldHash::Compat:  0' >> META_new.yml
	$(NOECHO) $(ECHO) '    IO:                   1.23' >> META_new.yml
	$(NOECHO) $(ECHO) '    JSON:                 2.12' >> META_new.yml
	$(NOECHO) $(ECHO) '    JSON::XS:             2.231' >> META_new.yml
	$(NOECHO) $(ECHO) '    Module::Pluggable::Object:  0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Moose:                0.92' >> META_new.yml
	$(NOECHO) $(ECHO) '    MooseX::Clone:        0.04' >> META_new.yml
	$(NOECHO) $(ECHO) '    MooseX::Role::Parameterized:  0.1' >> META_new.yml
	$(NOECHO) $(ECHO) '    MooseX::YAML:         0.04' >> META_new.yml
	$(NOECHO) $(ECHO) '    namespace::clean:     0.08' >> META_new.yml
	$(NOECHO) $(ECHO) '    PadWalker:            1.9' >> META_new.yml
	$(NOECHO) $(ECHO) '    Path::Class:          0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Scalar::Util:         0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Scope::Guard:         0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Search::GIN:          0.03' >> META_new.yml
	$(NOECHO) $(ECHO) '    Set::Object:          1.26' >> META_new.yml
	$(NOECHO) $(ECHO) '    Storable:             0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Task::Weaken:         0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Test::Exception:      0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Test::More:           0.88' >> META_new.yml
	$(NOECHO) $(ECHO) '    Test::use::ok:        0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Tie::ToObject:        0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Try::Tiny:            0' >> META_new.yml
	$(NOECHO) $(ECHO) '    YAML::XS:             0.3' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '    directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '        - t' >> META_new.yml
	$(NOECHO) $(ECHO) '        - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by:       ExtUtils::MakeMaker version 6.55_02' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '    url:      http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '    version:  1.4' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta distsignature
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{META.yml} => q{Module meta-data (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/local/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="0.40">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT></ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR></AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::MOP" VERSION="0.94" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Data::Stream::Bulk" VERSION="0.07" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Data::UUID::LibUUID" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Data::Visitor" VERSION="0.24" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Digest::SHA" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Hash::Util::FieldHash::Compat" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="IO::" VERSION="1.23" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="JSON::" VERSION="2.12" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="JSON::XS" VERSION="2.231" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Module::Pluggable::Object" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::" VERSION="0.92" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="MooseX::Clone" VERSION="0.04" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="MooseX::Role::Parameterized" VERSION="0.1" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="MooseX::YAML" VERSION="0.04" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="PadWalker::" VERSION="1.9" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Path::Class" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Scalar::Util" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Scope::Guard" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Search::GIN" VERSION="0.03" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Set::Object" VERSION="1.26" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Storable::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Task::Weaken" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Test::Exception" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Test::More" VERSION="0.88" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Test::use::ok" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Tie::ToObject" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Try::Tiny" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="YAML::XS" VERSION="0.3" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="namespace::clean" VERSION="0.08" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="darwin-2level-5.10" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/KiokuDB/Role/Upgrade/Handlers.pm blib/lib/KiokuDB/Role/Upgrade/Handlers.pm \
	  lib/KiokuDB/Test/Fixture/Small.pm blib/lib/KiokuDB/Test/Fixture/Small.pm \
	  lib/KiokuDB/Role/ID/Content.pm blib/lib/KiokuDB/Role/ID/Content.pm \
	  lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/DoNotSerialize.pm blib/lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/DoNotSerialize.pm \
	  lib/KiokuDB/Test/Fixture/TXN/Nested.pm blib/lib/KiokuDB/Test/Fixture/TXN/Nested.pm \
	  lib/KiokuDB/Backend/Role/BinarySafe.pm blib/lib/KiokuDB/Backend/Role/BinarySafe.pm \
	  lib/KiokuDB/Backend/Role/Query/Simple.pm blib/lib/KiokuDB/Backend/Role/Query/Simple.pm \
	  lib/KiokuDB/Role/TypeMap.pm blib/lib/KiokuDB/Role/TypeMap.pm \
	  lib/KiokuDB/Role/UUIDs.pm blib/lib/KiokuDB/Role/UUIDs.pm \
	  lib/KiokuDB/Backend/Role/Query.pm blib/lib/KiokuDB/Backend/Role/Query.pm \
	  lib/KiokuDB/Role/Immutable.pm blib/lib/KiokuDB/Role/Immutable.pm \
	  lib/KiokuDB/Backend/TypeMap/Default.pm blib/lib/KiokuDB/Backend/TypeMap/Default.pm \
	  lib/KiokuDB/TypeMap/Default/Canonical.pm blib/lib/KiokuDB/TypeMap/Default/Canonical.pm \
	  lib/KiokuDB/Backend/Serialize/JSPON.pm blib/lib/KiokuDB/Backend/Serialize/JSPON.pm \
	  lib/KiokuDB/Backend.pm blib/lib/KiokuDB/Backend.pm \
	  lib/KiokuDB/Set/Stored.pm blib/lib/KiokuDB/Set/Stored.pm \
	  lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm blib/lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm \
	  lib/KiokuDB/Test/Fixture/Concurrency.pm blib/lib/KiokuDB/Test/Fixture/Concurrency.pm \
	  lib/KiokuDB/Backend/Role/Query/GIN.pm blib/lib/KiokuDB/Backend/Role/Query/GIN.pm \
	  lib/KiokuDB/Test/Fixture/Clear.pm blib/lib/KiokuDB/Test/Fixture/Clear.pm \
	  lib/KiokuDB/Backend/TypeMap/Default/Storable.pm blib/lib/KiokuDB/Backend/TypeMap/Default/Storable.pm \
	  lib/KiokuDB/Backend/Serialize.pm blib/lib/KiokuDB/Backend/Serialize.pm \
	  lib/KiokuDB/TypeMap/Default/Passthrough.pm blib/lib/KiokuDB/TypeMap/Default/Passthrough.pm \
	  lib/KiokuDB/Serializer/YAML.pm blib/lib/KiokuDB/Serializer/YAML.pm \
	  lib/KiokuDB/Test/Digested.pm blib/lib/KiokuDB/Test/Digested.pm \
	  lib/KiokuDB/Serializer/Memory.pm blib/lib/KiokuDB/Serializer/Memory.pm \
	  lib/KiokuDB/TypeMap/Entry/Std/ID.pm blib/lib/KiokuDB/TypeMap/Entry/Std/ID.pm \
	  lib/KiokuDB/Backend/Role/Scan.pm blib/lib/KiokuDB/Backend/Role/Scan.pm \
	  lib/KiokuDB/Backend/Role/TXN.pm blib/lib/KiokuDB/Backend/Role/TXN.pm \
	  lib/KiokuDB/Backend/Role/Concurrency/POSIX.pm blib/lib/KiokuDB/Backend/Role/Concurrency/POSIX.pm \
	  lib/KiokuDB/TypeMap/Entry/Std/Intrinsic.pm blib/lib/KiokuDB/TypeMap/Entry/Std/Intrinsic.pm \
	  lib/KiokuDB/TypeMap/Entry/Std.pm blib/lib/KiokuDB/TypeMap/Entry/Std.pm \
	  lib/KiokuDB/Test/Fixture/GIN/Class.pm blib/lib/KiokuDB/Test/Fixture/GIN/Class.pm \
	  lib/KiokuDB/TypeMap.pm blib/lib/KiokuDB/TypeMap.pm \
	  lib/KiokuDB/Role/UUIDs/SerialIDs.pm blib/lib/KiokuDB/Role/UUIDs/SerialIDs.pm \
	  lib/KiokuDB/LinkChecker/Results.pm blib/lib/KiokuDB/LinkChecker/Results.pm \
	  lib/KiokuDB/Test/Fixture/ObjectGraph.pm blib/lib/KiokuDB/Test/Fixture/ObjectGraph.pm \
	  lib/KiokuDB/Set/Transient.pm blib/lib/KiokuDB/Set/Transient.pm \
	  lib/KiokuDB/Role/Intrinsic.pm blib/lib/KiokuDB/Role/Intrinsic.pm \
	  lib/KiokuDB/TypeMap/Default/JSON.pm blib/lib/KiokuDB/TypeMap/Default/JSON.pm \
	  lib/KiokuDB/Tutorial/JA.pod blib/lib/KiokuDB/Tutorial/JA.pod \
	  lib/KiokuDB/Class.pm blib/lib/KiokuDB/Class.pm \
	  lib/KiokuDB/GIN.pm blib/lib/KiokuDB/GIN.pm \
	  lib/KiokuDB/Role/Upgrade/Handlers/Table.pm blib/lib/KiokuDB/Role/Upgrade/Handlers/Table.pm \
	  lib/KiokuDB/Util.pm blib/lib/KiokuDB/Util.pm \
	  lib/KiokuDB/Role/Verbosity.pm blib/lib/KiokuDB/Role/Verbosity.pm \
	  lib/KiokuDB/GC/Naive/Sweep.pm blib/lib/KiokuDB/GC/Naive/Sweep.pm \
	  lib/KiokuDB/TypeMap/Entry/Alias.pm blib/lib/KiokuDB/TypeMap/Entry/Alias.pm \
	  lib/KiokuDB/Test.pm blib/lib/KiokuDB/Test.pm \
	  lib/KiokuDB/Backend/Role/TXN/Memory/Scan.pm blib/lib/KiokuDB/Backend/Role/TXN/Memory/Scan.pm \
	  lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm blib/lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm \
	  lib/KiokuDB/Role/UUIDs/LibUUID.pm blib/lib/KiokuDB/Role/UUIDs/LibUUID.pm \
	  lib/KiokuDB/Test/Fixture/TXN.pm blib/lib/KiokuDB/Test/Fixture/TXN.pm \
	  lib/KiokuDB/LiveObjects.pm blib/lib/KiokuDB/LiveObjects.pm \
	  lib/KiokuDB/TypeMap/Entry/Naive.pm blib/lib/KiokuDB/TypeMap/Entry/Naive.pm \
	  lib/KiokuDB/Backend/Role/TXN/Nested.pm blib/lib/KiokuDB/Backend/Role/TXN/Nested.pm \
	  lib/KiokuDB/Backend/Role/Broken.pm blib/lib/KiokuDB/Backend/Role/Broken.pm \
	  lib/KiokuDB/GC/Naive.pm blib/lib/KiokuDB/GC/Naive.pm \
	  lib/KiokuDB/Backend/Hash.pm blib/lib/KiokuDB/Backend/Hash.pm \
	  lib/KiokuDB/TypeMap/Resolver.pm blib/lib/KiokuDB/TypeMap/Resolver.pm \
	  lib/KiokuDB/Test/Fixture/Overwrite.pm blib/lib/KiokuDB/Test/Fixture/Overwrite.pm \
	  lib/KiokuDB/Backend/Serialize/Null.pm blib/lib/KiokuDB/Backend/Serialize/Null.pm \
	  lib/KiokuDB/Backend/Serialize/YAML.pm blib/lib/KiokuDB/Backend/Serialize/YAML.pm \
	  lib/KiokuDB/Serializer/Storable.pm blib/lib/KiokuDB/Serializer/Storable.pm \
	  lib/KiokuDB/TypeMap/ClassBuilders.pm blib/lib/KiokuDB/TypeMap/ClassBuilders.pm \
	  lib/KiokuDB/Role/ID.pm blib/lib/KiokuDB/Role/ID.pm \
	  lib/KiokuDB/Linker.pm blib/lib/KiokuDB/Linker.pm \
	  lib/KiokuDB/Test/Fixture/CAS.pm blib/lib/KiokuDB/Test/Fixture/CAS.pm \
	  lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm blib/lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm \
	  lib/KiokuDB/TypeMap/Entry.pm blib/lib/KiokuDB/TypeMap/Entry.pm \
	  lib/KiokuDB/LiveObjects/TXNScope.pm blib/lib/KiokuDB/LiveObjects/TXNScope.pm \
	  lib/KiokuDB/Test/Fixture/Scan.pm blib/lib/KiokuDB/Test/Fixture/Scan.pm \
	  lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm blib/lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm \
	  lib/KiokuDB/TypeMap/Entry/StorableHook.pm blib/lib/KiokuDB/TypeMap/Entry/StorableHook.pm \
	  lib/KiokuDB/Test/Fixture/Refresh.pm blib/lib/KiokuDB/Test/Fixture/Refresh.pm \
	  lib/KiokuDB/GC/Naive/Mark.pm blib/lib/KiokuDB/GC/Naive/Mark.pm \
	  lib/KiokuDB/TypeMap/Entry/JSON/Scalar.pm blib/lib/KiokuDB/TypeMap/Entry/JSON/Scalar.pm \
	  lib/KiokuDB/Backend/Serialize/Memory.pm blib/lib/KiokuDB/Backend/Serialize/Memory.pm \
	  lib/KiokuDB/Test/Fixture.pm blib/lib/KiokuDB/Test/Fixture.pm \
	  lib/KiokuDB/Test/Fixture/SimpleSearch.pm blib/lib/KiokuDB/Test/Fixture/SimpleSearch.pm \
	  lib/KiokuDB/Backend/Role/Prefetch.pm blib/lib/KiokuDB/Backend/Role/Prefetch.pm \
	  lib/KiokuDB/Role/API.pm blib/lib/KiokuDB/Role/API.pm \
	  lib/KiokuDB/TypeMap/Default.pm blib/lib/KiokuDB/TypeMap/Default.pm \
	  lib/KiokuDB/Role/WithDigest.pm blib/lib/KiokuDB/Role/WithDigest.pm \
	  lib/KiokuDB/Entry.pm blib/lib/KiokuDB/Entry.pm \
	  lib/KiokuDB/Backend/TypeMap/Default/JSON.pm blib/lib/KiokuDB/Backend/TypeMap/Default/JSON.pm \
	  lib/KiokuDB/Reference.pm blib/lib/KiokuDB/Reference.pm \
	  lib/KiokuDB/Role/UUIDs/DataUUID.pm blib/lib/KiokuDB/Role/UUIDs/DataUUID.pm \
	  lib/KiokuDB/Backend/Serialize/Storable.pm blib/lib/KiokuDB/Backend/Serialize/Storable.pm \
	  lib/KiokuDB/Role/Scan.pm blib/lib/KiokuDB/Role/Scan.pm \
	  lib/KiokuDB/Test/Fixture/Binary.pm blib/lib/KiokuDB/Test/Fixture/Binary.pm \
	  lib/KiokuDB/TypeMap/Entry/Closure.pm blib/lib/KiokuDB/TypeMap/Entry/Closure.pm \
	  lib/KiokuDB/Meta/Instance.pm blib/lib/KiokuDB/Meta/Instance.pm \
	  lib/KiokuDB/Test/Fixture/TypeMap/Default.pm blib/lib/KiokuDB/Test/Fixture/TypeMap/Default.pm \
	  lib/KiokuDB/Serializer.pm blib/lib/KiokuDB/Serializer.pm \
	  lib/KiokuDB/Backend/Role/UnicodeSafe.pm blib/lib/KiokuDB/Backend/Role/UnicodeSafe.pm \
	  lib/KiokuDB/Set/Deferred.pm blib/lib/KiokuDB/Set/Deferred.pm \
	  lib/KiokuDB/Serializer/JSON.pm blib/lib/KiokuDB/Serializer/JSON.pm \
	  lib/KiokuDB/Set/Storage.pm blib/lib/KiokuDB/Set/Storage.pm \
	  lib/KiokuDB/Entry/Skip.pm blib/lib/KiokuDB/Entry/Skip.pm \
	  lib/KiokuDB/LiveObjects/Scope.pm blib/lib/KiokuDB/LiveObjects/Scope.pm \
	  lib/KiokuDB.pm blib/lib/KiokuDB.pm \
	  lib/KiokuDB/Test/Fixture/RootSet.pm blib/lib/KiokuDB/Test/Fixture/RootSet.pm \
	  lib/KiokuDB/Set/Base.pm blib/lib/KiokuDB/Set/Base.pm \
	  lib/KiokuDB/TypeMap/Entry/Ref.pm blib/lib/KiokuDB/TypeMap/Entry/Ref.pm \
	  lib/KiokuDB/Thunk.pm blib/lib/KiokuDB/Thunk.pm \
	  lib/KiokuDB/TypeMap/Composite.pm blib/lib/KiokuDB/TypeMap/Composite.pm \
	  lib/KiokuDB/Backend/Role/TXN/Memory.pm blib/lib/KiokuDB/Backend/Role/TXN/Memory.pm \
	  lib/KiokuDB/Set/Loaded.pm blib/lib/KiokuDB/Set/Loaded.pm \
	  lib/KiokuDB/TypeMap/Entry/Passthrough.pm blib/lib/KiokuDB/TypeMap/Entry/Passthrough.pm \
	  lib/KiokuDB/TypeMap/Default/Storable.pm blib/lib/KiokuDB/TypeMap/Default/Storable.pm \
	  lib/KiokuDB/TypeMap/Entry/Std/Compile.pm blib/lib/KiokuDB/TypeMap/Entry/Std/Compile.pm \
	  lib/KiokuDB/Collapser.pm blib/lib/KiokuDB/Collapser.pm \
	  lib/KiokuDB/LinkChecker.pm blib/lib/KiokuDB/LinkChecker.pm \
	  lib/KiokuDB/Set.pm blib/lib/KiokuDB/Set.pm \
	  lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm blib/lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm \
	  lib/KiokuDB/Tutorial.pod blib/lib/KiokuDB/Tutorial.pod \
	  lib/KiokuDB/Collapser/Buffer.pm blib/lib/KiokuDB/Collapser/Buffer.pm \
	  lib/KiokuDB/Test/Company.pm blib/lib/KiokuDB/Test/Company.pm \
	  lib/KiokuDB/Test/Fixture/Unicode.pm blib/lib/KiokuDB/Test/Fixture/Unicode.pm \
	  lib/KiokuDB/Role/ID/Digest.pm blib/lib/KiokuDB/Role/ID/Digest.pm \
	  lib/KiokuDB/TypeMap/Entry/Compiled.pm blib/lib/KiokuDB/TypeMap/Entry/Compiled.pm \
	  lib/KiokuDB/TypeMap/Entry/Set.pm blib/lib/KiokuDB/TypeMap/Entry/Set.pm \
	  lib/KiokuDB/Meta/Attribute/Lazy.pm blib/lib/KiokuDB/Meta/Attribute/Lazy.pm \
	  lib/KiokuDB/LiveObjects/Guard.pm blib/lib/KiokuDB/LiveObjects/Guard.pm \
	  lib/KiokuDB/Backend/Serialize/JSON.pm blib/lib/KiokuDB/Backend/Serialize/JSON.pm \
	  lib/KiokuDB/TypeMap/Entry/Std/Expand.pm blib/lib/KiokuDB/TypeMap/Entry/Std/Expand.pm \
	  lib/KiokuDB/Backend/Serialize/Delegate.pm blib/lib/KiokuDB/Backend/Serialize/Delegate.pm \
	  lib/KiokuDB/Test/Person.pm blib/lib/KiokuDB/Test/Person.pm \
	  lib/KiokuDB/Backend/Role/Clear.pm blib/lib/KiokuDB/Backend/Role/Clear.pm \
	  lib/KiokuDB/Role/Upgrade/Data.pm blib/lib/KiokuDB/Role/Upgrade/Data.pm \
	  lib/KiokuDB/Test/Employee.pm blib/lib/KiokuDB/Test/Employee.pm \
	  lib/KiokuDB/Test/Fixture/TXN/Scan.pm blib/lib/KiokuDB/Test/Fixture/TXN/Scan.pm \
	  lib/KiokuDB/TypeMap/Shadow.pm blib/lib/KiokuDB/TypeMap/Shadow.pm \
	  lib/KiokuDB/Stream/Objects.pm blib/lib/KiokuDB/Stream/Objects.pm \
	  lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/Lazy.pm blib/lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/Lazy.pm \
	  lib/KiokuDB/TypeMap/Entry/Callback.pm blib/lib/KiokuDB/TypeMap/Entry/Callback.pm \
	  lib/KiokuDB/TypeMap/Entry/MOP.pm blib/lib/KiokuDB/TypeMap/Entry/MOP.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
