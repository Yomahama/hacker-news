import 'package:hacker_news/features/stories/data/models/hacker_news_user.dart';
import 'package:hacker_news/features/stories/data/providers/stories_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hacker_news_user_notifier.g.dart';

@Riverpod()
class HackerNewsUserNotifier extends _$HackerNewsUserNotifier {
  @override
  FutureOr<HackerNewsUser> build(String id) async {
    final repository = ref.watch(storiesRepositoryProvider);

    return repository.getUserById(id);
  }
}
