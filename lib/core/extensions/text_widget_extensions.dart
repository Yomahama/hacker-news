import 'package:flutter/material.dart';
import 'package:hacker_news/core/constants/theme/app_colors.dart';
import 'package:hacker_news/core/extensions/context_extensions.dart';
import 'package:skeleton_text/skeleton_text.dart';

extension TextWidgetExtension on Text {
  Size getSize({double width = double.infinity, required BuildContext context}) {
    final textPainter = TextPainter(
      text: TextSpan(text: data, style: DefaultTextStyle.of(context).style.merge(style)),
      maxLines: maxLines,
      strutStyle: strutStyle,
      textDirection: textDirection ?? TextDirection.ltr,
      textHeightBehavior: textHeightBehavior,
    )..layout(minWidth: 0, maxWidth: width);

    return textPainter.size;
  }

  Widget shimmer(BuildContext context, {double widthScale = 1}) {
    assert(widthScale > 0 && widthScale <= 1);

    final size = getSize(context: context);

    return SkeletonAnimation(
      child: SizedBox(
        height: size.height,
        child: Container(
          height: style?.fontSize ?? size.height * 0.85,
          width: context.screenWidth * widthScale,
          decoration: BoxDecoration(
            color: AppColors.grey200,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
