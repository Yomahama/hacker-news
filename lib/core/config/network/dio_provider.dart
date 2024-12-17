import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacker_news/core/config/network/custom_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod()
Dio dio(Ref ref) {
  return Dio()
    ..options = BaseOptions(
      connectTimeout: const Duration(seconds: 45),
      receiveTimeout: const Duration(seconds: 45),
      headers: {'Accept': '*/*', 'content-type': 'application/json'},
    )
    ..interceptors.addAll([
      if (!kReleaseMode) const CustomDioLogger(),
    ]);
}
