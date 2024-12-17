// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hacker_news/core/constants/theme/app_colors.dart';
import 'package:hacker_news/core/constants/theme/text_styles.dart';
import 'package:hacker_news/core/extensions/datetime_extensions.dart';
import 'package:hacker_news/core/extensions/text_widget_extensions.dart';
import 'package:hacker_news/core/mixins/url_launch_handler.dart';
import 'package:hacker_news/features/stories/data/models/story.dart';
import 'package:hacker_news/features/stories/presentation/user_page/user_page.dart';
import 'package:hacker_news/features/stories/state/story_notifier.dart';
import 'package:hacker_news/shared/animations/animated_color_tap.dart';

class StoryTile extends ConsumerWidget {
  final int id;

  const StoryTile({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storyState = ref.watch(storyNotifierProvider(id));

    return storyState.when(
      loading: () => const _StorySkeletonView(),
      data: (story) => StoryContentView(story: story),
      error: (err, stackTrace) => const _StoryErrorView(),
    );
  }
}

class StoryContentView extends StatelessWidget with UrlLaunchHandler {
  final Story story;
  final bool showAuthor;
  const StoryContentView({required this.story, this.showAuthor = true, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedColorTap(
      onTap: () => _onTileTap(story.url, context),
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 10, top: 8, bottom: 8),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(story.time.yyyyMMddHHmm, style: Theme.of(context).textTheme.labelSmall),
                  const SizedBox(height: 2),
                  Text(
                    story.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  if (showAuthor)
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => _onAuthorTap(context, story.by),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(CupertinoIcons.person_crop_circle, size: 18),
                            const SizedBox(width: 5),
                            Text(story.by, style: TextStyles.robotoMedium12Black),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Icon(CupertinoIcons.chevron_right, color: AppColors.grey400, size: 20),
          ],
        ),
      ),
    );
  }

  void _onTileTap(String? url, BuildContext context) {
    if (url == null) {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog.adaptive(
          title: Text('No URL available for this article'),
        ),
      );
    } else {
      openUrl(story.url!);
    }
  }

  void _onAuthorTap(BuildContext context, String userId) {
    context.go(UserPage.route(userId));
  }
}

class _StorySkeletonView extends StatelessWidget {
  const _StorySkeletonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('date', style: Theme.of(context).textTheme.labelSmall).shimmer(context, widthScale: 0.25),
          const SizedBox(height: 2),
          Text('title', style: Theme.of(context).textTheme.headlineMedium).shimmer(context, widthScale: 0.75),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(CupertinoIcons.person_crop_circle, size: 18),
              const SizedBox(width: 5),
              const Text('author', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12))
                  .shimmer(context, widthScale: 0.25),
            ],
          ),
        ],
      ),
    );
  }
}

class _StoryErrorView extends StatelessWidget {
  const _StoryErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: const Text('Article could not be loaded'),
    );
  }
}
