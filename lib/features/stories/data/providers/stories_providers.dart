import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacker_news/core/config/network/dio_provider.dart';
import 'package:hacker_news/features/stories/data/api/stories_api_client.dart';
import 'package:hacker_news/features/stories/data/repositories/stories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stories_providers.g.dart';

@Riverpod()
StoriesApiClient storiesApiClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return StoriesApiClient(dio);
}

@Riverpod()
StoriesRepository storiesRepository(Ref ref) {
  final client = ref.watch(storiesApiClientProvider);
  return StoriesRepository(client: client);
}
