import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacker_news/core/custom_json_converters/seconds_to_date_time_converter.dart';

part 'hacker_news_user.freezed.dart';
part 'hacker_news_user.g.dart';

@freezed
class HackerNewsUser with _$HackerNewsUser {
  factory HackerNewsUser({
    required String id,
    required String? about,
    @SecondsToDateTimeConverter() required DateTime created,
    required int karma,
    required List<int> submitted,
  }) = _HackerNewsUser;

  factory HackerNewsUser.fromJson(Map<String, dynamic> json) => _$HackerNewsUserFromJson(json);
}
