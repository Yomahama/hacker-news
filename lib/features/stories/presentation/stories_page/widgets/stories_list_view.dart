import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacker_news/features/stories/presentation/stories_page/widgets/story_tile.dart';
import 'package:hacker_news/features/stories/presentation/widgets/sliver_fill_remaining_loading.dart';
import 'package:hacker_news/features/stories/state/stories_notifier.dart';

class StoriesListView extends ConsumerWidget {
  const StoriesListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storiesState = ref.watch(storiesNotifierProvider);

    return storiesState.when(
      loading: () => const SliverFillRemainingLoading(),
      data: (stories) => SliverList.separated(
        itemCount: stories.length,
        itemBuilder: (_, i) => StoryTile(id: stories[i]),
        separatorBuilder: (context, index) => const Divider(indent: 15),
      ),
      error: (_, __) => const _StoriesErrorView(),
    );
  }
}

class _StoriesErrorView extends StatelessWidget {
  const _StoriesErrorView();

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: Text('Could not load stories'),
      ),
    );
  }
}
