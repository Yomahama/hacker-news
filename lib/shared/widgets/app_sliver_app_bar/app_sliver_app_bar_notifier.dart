import 'package:flutter/material.dart';
import 'package:hacker_news/core/mixins/calculations_handler.dart';
import 'package:hacker_news/shared/widgets/app_sliver_app_bar/app_sliver_app_bar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_sliver_app_bar_notifier.g.dart';

class AppSliverAppBarState {
  final bool showLargeTitle;
  final double dividerOpacity;

  const AppSliverAppBarState({
    this.showLargeTitle = true,
    this.dividerOpacity = 0,
  });

  AppSliverAppBarState copyWith({
    bool? showLargeTitle,
    double? dividerOpacity,
  }) {
    return AppSliverAppBarState(
      showLargeTitle: showLargeTitle ?? this.showLargeTitle,
      dividerOpacity: dividerOpacity ?? this.dividerOpacity,
    );
  }
}

@Riverpod()
class AppSliverAppBarNotifier extends _$AppSliverAppBarNotifier with CalculationHandler {
  @override
  AppSliverAppBarState build() {
    return const AppSliverAppBarState();
  }

  void onScroll(FlexibleSpaceBarSettings? settings) {
    final minExtent = settings?.minExtent ?? 0;
    final maxExtent = settings?.maxExtent ?? 0;
    final currentExtent = settings?.currentExtent ?? 0;

    final max = maxExtent - minExtent;
    final current = currentExtent - minExtent;

    final showLargeTitle = current > AppSliverAppBar.titleBotPadding;

    final dividerOpacity = showLargeTitle ? getPercent(current, max - AppSliverAppBar.titleBotPadding) : 1.0;

    state = state.copyWith(showLargeTitle: showLargeTitle, dividerOpacity: dividerOpacity);
  }
}
