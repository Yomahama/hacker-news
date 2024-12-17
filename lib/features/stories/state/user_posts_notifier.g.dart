// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_posts_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userPostsNotifierHash() => r'06db12dc60664c1c1cea02dc77644f2f0af26a7c';

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

abstract class _$UserPostsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Story>> {
  late final List<int> ids;

  FutureOr<List<Story>> build(
    List<int> ids,
  );
}

/// See also [UserPostsNotifier].
@ProviderFor(UserPostsNotifier)
const userPostsNotifierProvider = UserPostsNotifierFamily();

/// See also [UserPostsNotifier].
class UserPostsNotifierFamily extends Family<AsyncValue<List<Story>>> {
  /// See also [UserPostsNotifier].
  const UserPostsNotifierFamily();

  /// See also [UserPostsNotifier].
  UserPostsNotifierProvider call(
    List<int> ids,
  ) {
    return UserPostsNotifierProvider(
      ids,
    );
  }

  @override
  UserPostsNotifierProvider getProviderOverride(
    covariant UserPostsNotifierProvider provider,
  ) {
    return call(
      provider.ids,
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
  String? get name => r'userPostsNotifierProvider';
}

/// See also [UserPostsNotifier].
class UserPostsNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UserPostsNotifier, List<Story>> {
  /// See also [UserPostsNotifier].
  UserPostsNotifierProvider(
    List<int> ids,
  ) : this._internal(
          () => UserPostsNotifier()..ids = ids,
          from: userPostsNotifierProvider,
          name: r'userPostsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userPostsNotifierHash,
          dependencies: UserPostsNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserPostsNotifierFamily._allTransitiveDependencies,
          ids: ids,
        );

  UserPostsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ids,
  }) : super.internal();

  final List<int> ids;

  @override
  FutureOr<List<Story>> runNotifierBuild(
    covariant UserPostsNotifier notifier,
  ) {
    return notifier.build(
      ids,
    );
  }

  @override
  Override overrideWith(UserPostsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserPostsNotifierProvider._internal(
        () => create()..ids = ids,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ids: ids,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserPostsNotifier, List<Story>>
      createElement() {
    return _UserPostsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserPostsNotifierProvider && other.ids == ids;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ids.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserPostsNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Story>> {
  /// The parameter `ids` of this provider.
  List<int> get ids;
}

class _UserPostsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserPostsNotifier,
        List<Story>> with UserPostsNotifierRef {
  _UserPostsNotifierProviderElement(super.provider);

  @override
  List<int> get ids => (origin as UserPostsNotifierProvider).ids;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
