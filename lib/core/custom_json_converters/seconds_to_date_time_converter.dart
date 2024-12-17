import 'package:freezed_annotation/freezed_annotation.dart';

class SecondsToDateTimeConverter implements JsonConverter<DateTime, int> {
  const SecondsToDateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json * 1000).toLocal();

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch ~/ 1000;
}
