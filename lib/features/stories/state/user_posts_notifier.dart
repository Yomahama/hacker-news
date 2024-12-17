import 'dart:developer';

import 'package:hacker_news/features/stories/data/models/story.dart';
import 'package:hacker_news/features/stories/data/providers/stories_providers.dart';
import 'package:hacker_news/features/stories/data/repositories/stories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_posts_notifier.g.dart';

@Riverpod()
class UserPostsNotifier extends _$UserPostsNotifier {
  bool _isCancelled = false;

  @override
  Future<List<Story>> build(List<int> ids) async {
    _getUserPosts(ids);

    ref.onDispose(() => _isCancelled = true);

    return [];
  }

  Future<void> _getUserPosts(List<int> ids) async {
    state = const AsyncValue.loading();

    final repository = ref.watch(storiesRepositoryProvider);

    try {
      final List<Story> stories = [];

      final chunks = <List<int>>[];
      for (var i = 0; i < ids.length; i += 10) {
        chunks.add(ids.sublist(i, i + 10 > ids.length ? ids.length : i + 10));
      }

      for (final chunk in chunks) {
        if (_isCancelled) return;

        final storiesWithNull = await Future.wait([
          for (final id in chunk) _getStory(repository, id),
        ]);

        if (_isCancelled) return;

        stories.addAll(storiesWithNull.whereType<Story>());

        state = AsyncValue.data(List<Story>.from(stories));

        await Future.delayed(const Duration(milliseconds: 500));
      }
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<Story?> _getStory(StoriesRepository repository, int id) async {
    try {
      return await repository.getStoryByIdOrNull(id);
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
      return null;
    }
  }
}
