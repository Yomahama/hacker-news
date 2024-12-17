import 'package:dio/dio.dart';
import 'package:hacker_news/features/stories/data/models/hacker_news_user.dart';
import 'package:hacker_news/features/stories/data/models/story.dart';
import 'package:retrofit/retrofit.dart';

part 'stories_api_client.g.dart';

@RestApi(baseUrl: 'https://hacker-news.firebaseio.com')
abstract class StoriesApiClient {
  factory StoriesApiClient(Dio dio, {String baseUrl}) = _StoriesApiClient;

  @GET('/v0/topstories.json')
  Future<List<int>> getStoriesIds();

  @GET('/v0/item/{id}.json')
  Future<Story> getStoryById(@Path('id') int id);

  @GET('/v0/item/{id}.json')
  Future<HttpResponse> getItemResponseById(@Path('id') int id);

  @GET('/v0/user/{id}.json')
  Future<HackerNewsUser> getUserById(@Path('id') String id);
}
