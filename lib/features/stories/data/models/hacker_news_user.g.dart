// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hacker_news_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HackerNewsUserImpl _$$HackerNewsUserImplFromJson(Map<String, dynamic> json) =>
    _$HackerNewsUserImpl(
      id: json['id'] as String,
      about: json['about'] as String?,
      created: const SecondsToDateTimeConverter()
          .fromJson((json['created'] as num).toInt()),
      karma: (json['karma'] as num).toInt(),
      submitted: (json['submitted'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$HackerNewsUserImplToJson(
        _$HackerNewsUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'about': instance.about,
      'created': const SecondsToDateTimeConverter().toJson(instance.created),
      'karma': instance.karma,
      'submitted': instance.submitted,
    };
