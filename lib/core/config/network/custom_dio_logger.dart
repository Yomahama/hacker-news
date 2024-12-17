import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:developer';

import 'package:dio/dio.dart';

class CustomDioLogger extends Interceptor {
  const CustomDioLogger();
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);

    try {
      var res = 'NEW REQUEST | ${options.method} | ${options.uri}';

      if (options.queryParameters.entries.isNotEmpty) {
        final json = prettyJson(options.queryParameters);
        res = '$res\nQuery parameters: $json';
      }
      if (options.data != null) {
        final json = prettyJson(options.data);
        res = '$res\nData: $json';
      }

      // final json = prettyJson(options.headers);
      // res = '$res\nHeaders: $json';

      log(res);
    } catch (e, stackTrace) {
      var res = 'LOGGER CRASHED | NEW REQUEST | ${options.method} | ${options.uri}';
      res = '$res\n${options.data}';
      log(res, error: e, stackTrace: stackTrace);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);

    try {
      var res = 'RESPONSE | ${response.statusCode} | ${response.realUri}';

      if (response.data != null) {
        final json = prettyJson(response.data);
        res = '$res\n$json';
      }

      // final json = prettyJson(response.requestOptions.headers);
      // res = '$res\nHeaders: $json';

      logSuccess(res);
    } catch (e, stackTrace) {
      var res = 'LOGGER CRASHED | RESPONSE | ${response.statusCode} | ${response.realUri}';
      res = '$res\n${response.data}';
      log(res, error: e, stackTrace: stackTrace);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);

    try {
      // var res = 'DIO ERROR | ${err.message} | ${err.response?.realUri ?? err.requestOptions.uri.toString()}';
      var res = 'DIO ERROR | ${err.response?.realUri ?? err.requestOptions.uri.toString()}';
      // var res = 'DIO ERROR | ${err.response?.realUri}';
      if (err.response?.data != null) {
        final json = prettyJson(err.response?.data);
        res = '$res\n$json';
      }

      // final json = prettyJson(err.requestOptions.headers);
      // res = '$res\nHeaders: $json';

      logError(res);
    } catch (e, stackTrace) {
      var res = 'LOGGER CRASHED | DIO ERROR  | ${err.message} | ${err.response?.realUri}';
      res = '$res\n${err.response?.data}';
      log(res, error: e, stackTrace: stackTrace);
    }
  }

  String prettyJson(dynamic data, {bool showOnlyFirstListElement = false}) {
    final dynamic transformedData = showOnlyFirstListElement ? _transformData(data) : data;
    const encoder = JsonEncoder.withIndent('  ');
    return encoder.convert(transformedData);
  }

  dynamic _transformData(dynamic data) {
    if (data is List) {
      if (data.isEmpty) return [];
      if (data.length == 1) return [data.first];
      return [data.first, '...']; // Show the first item and ellipsis for others
    } else if (data is Map) {
      return data.map((key, value) => MapEntry(key, _transformData(value)));
    }
    return data;
  }
}

// Blue text
void logInfo(String msg) {
  developer.log('\x1B[34m$msg\x1B[0m');
}

// Green text
void logSuccess(String msg) {
  final lines = msg.split('\n').map((line) => '\x1B[32m$line\x1B[0m').join('\n');
  developer.log(lines);

  // developer.log('\x1B[32m$msg\x1B[0m');
}

// Yellow text
void logWarning(String msg) {
  developer.log('\x1B[33m$msg\x1B[0m');
}

// Red text
void logError(String msg) {
  developer.log('\x1B[31m$msg\x1B[0m');
}
