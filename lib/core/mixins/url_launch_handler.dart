import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

mixin UrlLaunchHandler {
  Future<bool> openUrl(String url) async {
    try {
      return launchUrl(Uri.parse(url));
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
      return false;
    }
  }
}
