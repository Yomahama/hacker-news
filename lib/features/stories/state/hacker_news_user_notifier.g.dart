// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hacker_news_user_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hackerNewsUserNotifierHash() =>
    r'ebcc2e34fa90abee8765ddd580dc92afaef00ad9';

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

abstract class _$HackerNewsUserNotifier
    extends BuildlessAutoDisposeAsyncNotifier<HackerNewsUser> {
  late final String id;

  FutureOr<HackerNewsUser> build(
    String id,
  );
}

/// See also [HackerNewsUserNotifier].
@ProviderFor(HackerNewsUserNotifier)
const hackerNewsUserNotifierProvider = HackerNewsUserNotifierFamily();

/// See also [HackerNewsUserNotifier].
class HackerNewsUserNotifierFamily extends Family<AsyncValue<HackerNewsUser>> {
  /// See also [HackerNewsUserNotifier].
  const HackerNewsUserNotifierFamily();

  /// See also [HackerNewsUserNotifier].
  HackerNewsUserNotifierProvider call(
    String id,
  ) {
    return HackerNewsUserNotifierProvider(
      id,
    );
  }

  @override
  HackerNewsUserNotifierProvider getProviderOverride(
    covariant HackerNewsUserNotifierProvider provider,
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
  String? get name => r'hackerNewsUserNotifierProvider';
}

/// See also [HackerNewsUserNotifier].
class HackerNewsUserNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HackerNewsUserNotifier,
        HackerNewsUser> {
  /// See also [HackerNewsUserNotifier].
  HackerNewsUserNotifierProvider(
    String id,
  ) : this._internal(
          () => HackerNewsUserNotifier()..id = id,
          from: hackerNewsUserNotifierProvider,
          name: r'hackerNewsUserNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hackerNewsUserNotifierHash,
          dependencies: HackerNewsUserNotifierFamily._dependencies,
          allTransitiveDependencies:
              HackerNewsUserNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  HackerNewsUserNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<HackerNewsUser> runNotifierBuild(
    covariant HackerNewsUserNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(HackerNewsUserNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: HackerNewsUserNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<HackerNewsUserNotifier,
      HackerNewsUser> createElement() {
    return _HackerNewsUserNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HackerNewsUserNotifierProvider && other.id == id;
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
mixin HackerNewsUserNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<HackerNewsUser> {
  /// The parameter `id` of this provider.
  String get id;
}

class _HackerNewsUserNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HackerNewsUserNotifier,
        HackerNewsUser> with HackerNewsUserNotifierRef {
  _HackerNewsUserNotifierProviderElement(super.provider);

  @override
  String get id => (origin as HackerNewsUserNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
