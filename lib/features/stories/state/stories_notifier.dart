import 'package:hacker_news/features/stories/data/providers/stories_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stories_notifier.g.dart';

@Riverpod()
class StoriesNotifier extends _$StoriesNotifier {
  @override
  FutureOr<List<int>> build() async {
    final repository = ref.watch(storiesRepositoryProvider);

    return repository.getStoriesIds();
  }
}
