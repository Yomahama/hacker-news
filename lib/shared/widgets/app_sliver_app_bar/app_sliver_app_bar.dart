import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacker_news/core/constants/animation_durations.dart';
import 'package:hacker_news/core/constants/theme/text_styles.dart';
import 'package:hacker_news/core/extensions/context_extensions.dart';
import 'package:hacker_news/core/extensions/text_widget_extensions.dart';
import 'package:hacker_news/shared/widgets/app_back_button.dart';
import 'package:hacker_news/shared/widgets/app_sliver_app_bar/app_sliver_app_bar_notifier.dart';

class AppSliverAppBar extends StatefulWidget {
  final String title;
  final bool showBackButton;

  const AppSliverAppBar({required this.title, this.showBackButton = true, super.key});

  static const titleBotPadding = 5.0;

  @override
  State<AppSliverAppBar> createState() => _AppSliverAppBarState();
}

class _AppSliverAppBarState extends State<AppSliverAppBar> {
  late final Text _largeTitle;

  Size _largeTitleSize = const Size.fromHeight(AppSliverAppBar.titleBotPadding);

  @override
  void initState() {
    super.initState();

    _largeTitle = Text(widget.title, style: TextStyles.robotoSemiBold24Black);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      const hPadding = 15.0;
      final width = context.screenWidth - hPadding * 2;
      setState(() => _largeTitleSize = _largeTitle.getSize(width: width, context: context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [appSliverAppBarNotifierProvider.overrideWith(() => AppSliverAppBarNotifier())],
      child: SliverAppBar(
        expandedHeight: _largeTitleSize.height + 4 + kToolbarHeight + AppSliverAppBar.titleBotPadding,
        leading: widget.showBackButton ? const AppBackButton() : null,
        stretch: true,
        pinned: true,
        centerTitle: true,
        title: _AppBarTitle(title: widget.title),
        flexibleSpace: Consumer(
          builder: (context, ref, child) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              final settings = context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
              ref.read(appSliverAppBarNotifierProvider.notifier).onScroll(settings);
            });

            return child!;
          },
          child: Stack(
            children: [
              Positioned(
                bottom: AppSliverAppBar.titleBotPadding,
                left: 15,
                right: 15,
                child: _largeTitle,
              ),
              const _SliverAppBarForeground(),
              const _SliverAppBarDivider(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBarTitle extends ConsumerWidget {
  final String title;

  const _AppBarTitle({required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showLargeTitle = ref.watch(appSliverAppBarNotifierProvider.select((state) => state.showLargeTitle));

    return AnimatedOpacity(
      duration: Animations.duration200,
      opacity: showLargeTitle ? 0 : 1,
      child: Text(title, style: TextStyles.robotoSemiBold16Black),
    );
  }
}

class _SliverAppBarForeground extends StatelessWidget {
  const _SliverAppBarForeground();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: kToolbarHeight + context.viewPadding.top,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}

class _SliverAppBarDivider extends ConsumerWidget {
  const _SliverAppBarDivider();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final opacity = ref.watch(appSliverAppBarNotifierProvider.select((state) => state.dividerOpacity));

    return Positioned(
      top: kToolbarHeight + context.viewPadding.top - 1,
      left: 0,
      right: 0,
      child: Opacity(opacity: opacity, child: const Divider()),
    );
  }
}
