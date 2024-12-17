import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacker_news/core/custom_json_converters/seconds_to_date_time_converter.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
class Story with _$Story {
  factory Story({
    required int id,
    required String by,
    required String title,
    @SecondsToDateTimeConverter() required DateTime time,
    required String? url,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
