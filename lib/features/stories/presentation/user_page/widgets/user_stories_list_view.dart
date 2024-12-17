import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacker_news/features/stories/presentation/stories_page/widgets/story_tile.dart';
import 'package:hacker_news/features/stories/presentation/widgets/sliver_fill_remaining_loading.dart';
import 'package:hacker_news/features/stories/state/hacker_news_user_notifier.dart';
import 'package:hacker_news/features/stories/state/user_posts_notifier.dart';

class UserStoriesListView extends ConsumerWidget {
  final String userId;
  const UserStoriesListView({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(hackerNewsUserNotifierProvider(userId));

    return userState.maybeWhen(
      data: (user) {
        final postsState = ref.watch(userPostsNotifierProvider(user.submitted));

        return postsState.maybeWhen(
          data: (stories) {
            return SliverList.separated(
              itemCount: stories.length,
              itemBuilder: (_, i) => StoryContentView(story: stories[i], showAuthor: false),
              separatorBuilder: (context, index) => const Divider(indent: 15),
            );
          },
          orElse: () => const SliverFillRemainingLoading(),
        );
      },
      orElse: () => const SliverToBoxAdapter(),
    );
  }
}
