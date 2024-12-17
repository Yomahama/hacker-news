import 'package:flutter/material.dart';
import 'package:hacker_news/core/constants/animation_durations.dart';
import 'package:hacker_news/core/constants/theme/app_colors.dart';

class AnimatedColorTap extends StatefulWidget {
  final Function()? onTap;
  final Widget child;
  final BoxDecoration decoration;
  final Color beginColor;
  final Color endColor;
  final EdgeInsets padding;

  const AnimatedColorTap({
    required this.onTap,
    required this.child,
    this.decoration = const BoxDecoration(),
    this.beginColor = AppColors.white,
    this.endColor = AppColors.grey100,
    this.padding = EdgeInsets.zero,
    super.key,
  });

  @override
  State<AnimatedColorTap> createState() => _AnimatedColorTapState();
}

class _AnimatedColorTapState extends State<AnimatedColorTap> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Color?> _highlightAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Animations.reverseDuration,
      reverseDuration: Animations.defaultDuration,
      vsync: this,
    );

    _highlightAnimation = ColorTween(
      begin: widget.beginColor,
      end: widget.endColor,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        if (widget.onTap == null) return;

        _controller.forward();
      },
      onTapUp: (_) {
        if (widget.onTap == null) return;

        _controller.reverse();
        widget.onTap!();
      },
      onTapCancel: () {
        if (widget.onTap == null) return;

        _controller.reverse();
      },
      behavior: HitTestBehavior.opaque,
      child: AnimatedBuilder(
        animation: _highlightAnimation,
        builder: (_, child) {
          return Container(
            padding: widget.padding,
            decoration: widget.decoration.copyWith(color: _highlightAnimation.value),
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}
