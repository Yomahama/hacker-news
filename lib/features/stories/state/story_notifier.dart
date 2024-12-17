import 'package:hacker_news/features/stories/data/models/story.dart';
import 'package:hacker_news/features/stories/data/providers/stories_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'story_notifier.g.dart';

@Riverpod(keepAlive: true)
class StoryNotifier extends _$StoryNotifier {
  @override
  FutureOr<Story> build(int id) async {
    final repository = ref.watch(storiesRepositoryProvider);

    return repository.getStoryById(id);
  }
}
