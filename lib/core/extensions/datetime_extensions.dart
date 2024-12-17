import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get yyyyMMddHHmm {
    return DateFormat('yyyy.MM.dd HH:mm').format(this);
  }

  String get yyyyMMMdd {
    return DateFormat('yyyy, MMM dd').format(this);
  }
}
