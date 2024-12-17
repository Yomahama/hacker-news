// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryImpl _$$StoryImplFromJson(Map<String, dynamic> json) => _$StoryImpl(
      id: (json['id'] as num).toInt(),
      by: json['by'] as String,
      title: json['title'] as String,
      time: const SecondsToDateTimeConverter()
          .fromJson((json['time'] as num).toInt()),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$StoryImplToJson(_$StoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'by': instance.by,
      'title': instance.title,
      'time': const SecondsToDateTimeConverter().toJson(instance.time),
      'url': instance.url,
    };
