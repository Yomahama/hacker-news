// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hacker_news_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HackerNewsUser _$HackerNewsUserFromJson(Map<String, dynamic> json) {
  return _HackerNewsUser.fromJson(json);
}

/// @nodoc
mixin _$HackerNewsUser {
  String get id => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  @SecondsToDateTimeConverter()
  DateTime get created => throw _privateConstructorUsedError;
  int get karma => throw _privateConstructorUsedError;
  List<int> get submitted => throw _privateConstructorUsedError;

  /// Serializes this HackerNewsUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HackerNewsUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HackerNewsUserCopyWith<HackerNewsUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HackerNewsUserCopyWith<$Res> {
  factory $HackerNewsUserCopyWith(
          HackerNewsUser value, $Res Function(HackerNewsUser) then) =
      _$HackerNewsUserCopyWithImpl<$Res, HackerNewsUser>;
  @useResult
  $Res call(
      {String id,
      String? about,
      @SecondsToDateTimeConverter() DateTime created,
      int karma,
      List<int> submitted});
}

/// @nodoc
class _$HackerNewsUserCopyWithImpl<$Res, $Val extends HackerNewsUser>
    implements $HackerNewsUserCopyWith<$Res> {
  _$HackerNewsUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HackerNewsUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? about = freezed,
    Object? created = null,
    Object? karma = null,
    Object? submitted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      karma: null == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HackerNewsUserImplCopyWith<$Res>
    implements $HackerNewsUserCopyWith<$Res> {
  factory _$$HackerNewsUserImplCopyWith(_$HackerNewsUserImpl value,
          $Res Function(_$HackerNewsUserImpl) then) =
      __$$HackerNewsUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? about,
      @SecondsToDateTimeConverter() DateTime created,
      int karma,
      List<int> submitted});
}

/// @nodoc
class __$$HackerNewsUserImplCopyWithImpl<$Res>
    extends _$HackerNewsUserCopyWithImpl<$Res, _$HackerNewsUserImpl>
    implements _$$HackerNewsUserImplCopyWith<$Res> {
  __$$HackerNewsUserImplCopyWithImpl(
      _$HackerNewsUserImpl _value, $Res Function(_$HackerNewsUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of HackerNewsUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? about = freezed,
    Object? created = null,
    Object? karma = null,
    Object? submitted = null,
  }) {
    return _then(_$HackerNewsUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      karma: null == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int,
      submitted: null == submitted
          ? _value._submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HackerNewsUserImpl implements _HackerNewsUser {
  _$HackerNewsUserImpl(
      {required this.id,
      required this.about,
      @SecondsToDateTimeConverter() required this.created,
      required this.karma,
      required final List<int> submitted})
      : _submitted = submitted;

  factory _$HackerNewsUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$HackerNewsUserImplFromJson(json);

  @override
  final String id;
  @override
  final String? about;
  @override
  @SecondsToDateTimeConverter()
  final DateTime created;
  @override
  final int karma;
  final List<int> _submitted;
  @override
  List<int> get submitted {
    if (_submitted is EqualUnmodifiableListView) return _submitted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submitted);
  }

  @override
  String toString() {
    return 'HackerNewsUser(id: $id, about: $about, created: $created, karma: $karma, submitted: $submitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HackerNewsUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.karma, karma) || other.karma == karma) &&
            const DeepCollectionEquality()
                .equals(other._submitted, _submitted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, about, created, karma,
      const DeepCollectionEquality().hash(_submitted));

  /// Create a copy of HackerNewsUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HackerNewsUserImplCopyWith<_$HackerNewsUserImpl> get copyWith =>
      __$$HackerNewsUserImplCopyWithImpl<_$HackerNewsUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HackerNewsUserImplToJson(
      this,
    );
  }
}

abstract class _HackerNewsUser implements HackerNewsUser {
  factory _HackerNewsUser(
      {required final String id,
      required final String? about,
      @SecondsToDateTimeConverter() required final DateTime created,
      required final int karma,
      required final List<int> submitted}) = _$HackerNewsUserImpl;

  factory _HackerNewsUser.fromJson(Map<String, dynamic> json) =
      _$HackerNewsUserImpl.fromJson;

  @override
  String get id;
  @override
  String? get about;
  @override
  @SecondsToDateTimeConverter()
  DateTime get created;
  @override
  int get karma;
  @override
  List<int> get submitted;

  /// Create a copy of HackerNewsUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HackerNewsUserImplCopyWith<_$HackerNewsUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
