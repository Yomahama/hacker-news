import 'package:hacker_news/features/stories/data/api/stories_api_client.dart';
import 'package:hacker_news/features/stories/data/models/hacker_news_user.dart';
import 'package:hacker_news/features/stories/data/models/story.dart';

class StoriesRepository {
  final StoriesApiClient _client;

  const StoriesRepository({required StoriesApiClient client}) : _client = client;

  Future<List<int>> getStoriesIds() => _client.getStoriesIds();

  Future<Story> getStoryById(int id) => _client.getStoryById(id);

  Future<Story?> getStoryByIdOrNull(int id) async {
    final response = await _client.getItemResponseById(id);

    if (response.response.statusCode == 200 && response.data['type'] == 'story') {
      return Story.fromJson(response.data);
    }

    return null;
  }

  Future<HackerNewsUser> getUserById(String id) => _client.getUserById(id);
}
