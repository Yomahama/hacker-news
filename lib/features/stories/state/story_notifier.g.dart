// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storyNotifierHash() => r'0ca2bc5410125832ea6c302d605d491be5543f92';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$StoryNotifier extends BuildlessAsyncNotifier<Story> {
  late final int id;

  FutureOr<Story> build(
    int id,
  );
}

/// See also [StoryNotifier].
@ProviderFor(StoryNotifier)
const storyNotifierProvider = StoryNotifierFamily();

/// See also [StoryNotifier].
class StoryNotifierFamily extends Family<AsyncValue<Story>> {
  /// See also [StoryNotifier].
  const StoryNotifierFamily();

  /// See also [StoryNotifier].
  StoryNotifierProvider call(
    int id,
  ) {
    return StoryNotifierProvider(
      id,
    );
  }

  @override
  StoryNotifierProvider getProviderOverride(
    covariant StoryNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'storyNotifierProvider';
}

/// See also [StoryNotifier].
class StoryNotifierProvider
    extends AsyncNotifierProviderImpl<StoryNotifier, Story> {
  /// See also [StoryNotifier].
  StoryNotifierProvider(
    int id,
  ) : this._internal(
          () => StoryNotifier()..id = id,
          from: storyNotifierProvider,
          name: r'storyNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storyNotifierHash,
          dependencies: StoryNotifierFamily._dependencies,
          allTransitiveDependencies:
              StoryNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  StoryNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<Story> runNotifierBuild(
    covariant StoryNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(StoryNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: StoryNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<StoryNotifier, Story> createElement() {
    return _StoryNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StoryNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StoryNotifierRef on AsyncNotifierProviderRef<Story> {
  /// The parameter `id` of this provider.
  int get id;
}

class _StoryNotifierProviderElement
    extends AsyncNotifierProviderElement<StoryNotifier, Story>
    with StoryNotifierRef {
  _StoryNotifierProviderElement(super.provider);

  @override
  int get id => (origin as StoryNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
