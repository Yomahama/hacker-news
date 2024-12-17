import 'package:flutter/material.dart';
import 'package:hacker_news/core/constants/theme/app_colors.dart';

// w100 -> thin
// w200 -> extra-light
// w300 -> light
// w400 -> regular
// w500 -> medium
// w600 -> semi-bold
// w700 -> bold
// w800 -> extra-bold
// w900 -> black

class TextStyles {
  const TextStyles._();

  static const robotoSemiBold24Black = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const robotoSemiBold16Black = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static const robotoMedium12Black = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
}
