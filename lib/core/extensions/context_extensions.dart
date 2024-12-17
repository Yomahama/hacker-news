import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);

  double get screenWidth => MediaQuery.of(this).size.width;

  double get bottomViewPadding {
    const minimumBotPadding = 34.0;

    final botViewPadding = MediaQuery.viewPaddingOf(this).bottom;

    if (botViewPadding < minimumBotPadding) {
      return minimumBotPadding;
    }

    return botViewPadding;
  }
}
