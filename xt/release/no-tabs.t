use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.05

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'bin/kioku',
    'lib/KiokuDB.pm',
    'lib/KiokuDB/Backend.pm',
    'lib/KiokuDB/Backend/Hash.pm',
    'lib/KiokuDB/Backend/Role/BinarySafe.pm',
    'lib/KiokuDB/Backend/Role/Broken.pm',
    'lib/KiokuDB/Backend/Role/Clear.pm',
    'lib/KiokuDB/Backend/Role/Concurrency/POSIX.pm',
    'lib/KiokuDB/Backend/Role/GC.pm',
    'lib/KiokuDB/Backend/Role/Prefetch.pm',
    'lib/KiokuDB/Backend/Role/Query.pm',
    'lib/KiokuDB/Backend/Role/Query/GIN.pm',
    'lib/KiokuDB/Backend/Role/Query/Simple.pm',
    'lib/KiokuDB/Backend/Role/Query/Simple/Linear.pm',
    'lib/KiokuDB/Backend/Role/Scan.pm',
    'lib/KiokuDB/Backend/Role/TXN.pm',
    'lib/KiokuDB/Backend/Role/TXN/Memory.pm',
    'lib/KiokuDB/Backend/Role/TXN/Memory/Scan.pm',
    'lib/KiokuDB/Backend/Role/TXN/Nested.pm',
    'lib/KiokuDB/Backend/Role/UnicodeSafe.pm',
    'lib/KiokuDB/Backend/Serialize.pm',
    'lib/KiokuDB/Backend/Serialize/Delegate.pm',
    'lib/KiokuDB/Backend/Serialize/JSON.pm',
    'lib/KiokuDB/Backend/Serialize/JSPON.pm',
    'lib/KiokuDB/Backend/Serialize/JSPON/Collapser.pm',
    'lib/KiokuDB/Backend/Serialize/JSPON/Converter.pm',
    'lib/KiokuDB/Backend/Serialize/JSPON/Expander.pm',
    'lib/KiokuDB/Backend/Serialize/Memory.pm',
    'lib/KiokuDB/Backend/Serialize/Null.pm',
    'lib/KiokuDB/Backend/Serialize/Storable.pm',
    'lib/KiokuDB/Backend/Serialize/YAML.pm',
    'lib/KiokuDB/Backend/TypeMap/Default.pm',
    'lib/KiokuDB/Backend/TypeMap/Default/JSON.pm',
    'lib/KiokuDB/Backend/TypeMap/Default/Storable.pm',
    'lib/KiokuDB/Class.pm',
    'lib/KiokuDB/Collapser.pm',
    'lib/KiokuDB/Collapser/Buffer.pm',
    'lib/KiokuDB/Entry.pm',
    'lib/KiokuDB/Entry/Skip.pm',
    'lib/KiokuDB/Error.pm',
    'lib/KiokuDB/Error/MissingObjects.pm',
    'lib/KiokuDB/Error/UnknownObjects.pm',
    'lib/KiokuDB/GC/Naive.pm',
    'lib/KiokuDB/GC/Naive/Mark.pm',
    'lib/KiokuDB/GC/Naive/Sweep.pm',
    'lib/KiokuDB/GIN.pm',
    'lib/KiokuDB/LinkChecker.pm',
    'lib/KiokuDB/LinkChecker/Results.pm',
    'lib/KiokuDB/Linker.pm',
    'lib/KiokuDB/LiveObjects.pm',
    'lib/KiokuDB/LiveObjects/Guard.pm',
    'lib/KiokuDB/LiveObjects/Scope.pm',
    'lib/KiokuDB/LiveObjects/TXNScope.pm',
    'lib/KiokuDB/Meta/Attribute/DoNotSerialize.pm',
    'lib/KiokuDB/Meta/Attribute/Lazy.pm',
    'lib/KiokuDB/Meta/Instance.pm',
    'lib/KiokuDB/Reference.pm',
    'lib/KiokuDB/Role/API.pm',
    'lib/KiokuDB/Role/Cacheable.pm',
    'lib/KiokuDB/Role/ID.pm',
    'lib/KiokuDB/Role/ID/Content.pm',
    'lib/KiokuDB/Role/ID/Digest.pm',
    'lib/KiokuDB/Role/Immutable.pm',
    'lib/KiokuDB/Role/Immutable/Transitive.pm',
    'lib/KiokuDB/Role/Intrinsic.pm',
    'lib/KiokuDB/Role/Scan.pm',
    'lib/KiokuDB/Role/TypeMap.pm',
    'lib/KiokuDB/Role/UUIDs.pm',
    'lib/KiokuDB/Role/UUIDs/DataUUID.pm',
    'lib/KiokuDB/Role/UUIDs/LibUUID.pm',
    'lib/KiokuDB/Role/UUIDs/SerialIDs.pm',
    'lib/KiokuDB/Role/Upgrade/Data.pm',
    'lib/KiokuDB/Role/Upgrade/Handlers.pm',
    'lib/KiokuDB/Role/Upgrade/Handlers/Table.pm',
    'lib/KiokuDB/Role/Verbosity.pm',
    'lib/KiokuDB/Role/WithDigest.pm',
    'lib/KiokuDB/Serializer.pm',
    'lib/KiokuDB/Serializer/JSON.pm',
    'lib/KiokuDB/Serializer/Memory.pm',
    'lib/KiokuDB/Serializer/Storable.pm',
    'lib/KiokuDB/Serializer/YAML.pm',
    'lib/KiokuDB/Set.pm',
    'lib/KiokuDB/Set/Base.pm',
    'lib/KiokuDB/Set/Deferred.pm',
    'lib/KiokuDB/Set/Loaded.pm',
    'lib/KiokuDB/Set/Storage.pm',
    'lib/KiokuDB/Set/Stored.pm',
    'lib/KiokuDB/Set/Transient.pm',
    'lib/KiokuDB/Stream/Objects.pm',
    'lib/KiokuDB/Test.pm',
    'lib/KiokuDB/Test/Company.pm',
    'lib/KiokuDB/Test/Digested.pm',
    'lib/KiokuDB/Test/Employee.pm',
    'lib/KiokuDB/Test/Fixture.pm',
    'lib/KiokuDB/Test/Fixture/Binary.pm',
    'lib/KiokuDB/Test/Fixture/CAS.pm',
    'lib/KiokuDB/Test/Fixture/Clear.pm',
    'lib/KiokuDB/Test/Fixture/Concurrency.pm',
    'lib/KiokuDB/Test/Fixture/GIN/Class.pm',
    'lib/KiokuDB/Test/Fixture/MassInsert.pm',
    'lib/KiokuDB/Test/Fixture/ObjectGraph.pm',
    'lib/KiokuDB/Test/Fixture/Overwrite.pm',
    'lib/KiokuDB/Test/Fixture/Refresh.pm',
    'lib/KiokuDB/Test/Fixture/RootSet.pm',
    'lib/KiokuDB/Test/Fixture/Scan.pm',
    'lib/KiokuDB/Test/Fixture/Sets.pm',
    'lib/KiokuDB/Test/Fixture/SimpleSearch.pm',
    'lib/KiokuDB/Test/Fixture/Small.pm',
    'lib/KiokuDB/Test/Fixture/TXN.pm',
    'lib/KiokuDB/Test/Fixture/TXN/Nested.pm',
    'lib/KiokuDB/Test/Fixture/TXN/Scan.pm',
    'lib/KiokuDB/Test/Fixture/TypeMap/Default.pm',
    'lib/KiokuDB/Test/Fixture/Unicode.pm',
    'lib/KiokuDB/Test/Person.pm',
    'lib/KiokuDB/Thunk.pm',
    'lib/KiokuDB/Tutorial.pod',
    'lib/KiokuDB/Tutorial/JA.pod',
    'lib/KiokuDB/TypeMap.pm',
    'lib/KiokuDB/TypeMap/ClassBuilders.pm',
    'lib/KiokuDB/TypeMap/Composite.pm',
    'lib/KiokuDB/TypeMap/Default.pm',
    'lib/KiokuDB/TypeMap/Default/Canonical.pm',
    'lib/KiokuDB/TypeMap/Default/JSON.pm',
    'lib/KiokuDB/TypeMap/Default/Passthrough.pm',
    'lib/KiokuDB/TypeMap/Default/Storable.pm',
    'lib/KiokuDB/TypeMap/Entry.pm',
    'lib/KiokuDB/TypeMap/Entry/Alias.pm',
    'lib/KiokuDB/TypeMap/Entry/Callback.pm',
    'lib/KiokuDB/TypeMap/Entry/Closure.pm',
    'lib/KiokuDB/TypeMap/Entry/Compiled.pm',
    'lib/KiokuDB/TypeMap/Entry/JSON/Scalar.pm',
    'lib/KiokuDB/TypeMap/Entry/MOP.pm',
    'lib/KiokuDB/TypeMap/Entry/Naive.pm',
    'lib/KiokuDB/TypeMap/Entry/Passthrough.pm',
    'lib/KiokuDB/TypeMap/Entry/Ref.pm',
    'lib/KiokuDB/TypeMap/Entry/Set.pm',
    'lib/KiokuDB/TypeMap/Entry/Std.pm',
    'lib/KiokuDB/TypeMap/Entry/Std/Compile.pm',
    'lib/KiokuDB/TypeMap/Entry/Std/Expand.pm',
    'lib/KiokuDB/TypeMap/Entry/Std/ID.pm',
    'lib/KiokuDB/TypeMap/Entry/Std/Intrinsic.pm',
    'lib/KiokuDB/TypeMap/Entry/StorableHook.pm',
    'lib/KiokuDB/TypeMap/Resolver.pm',
    'lib/KiokuDB/TypeMap/Shadow.pm',
    'lib/KiokuDB/Util.pm',
    'lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/DoNotSerialize.pm',
    'lib/Moose/Meta/Attribute/Custom/Trait/KiokuDB/Lazy.pm',
    'lib/POD2/JA/KiokuDB/Tutorial.pod'
);

notabs_ok($_) foreach @files;
done_testing;
