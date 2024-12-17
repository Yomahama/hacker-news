import 'package:go_router/go_router.dart';
import 'package:hacker_news/features/stories/presentation/stories_page/stories_page.dart';
import 'package:hacker_news/features/stories/presentation/user_page/user_page.dart';

final router = [
  GoRoute(
    path: StoriesPage.route,
    builder: (context, state) => const StoriesPage(),
    routes: [
      GoRoute(
        path: UserPage.route(':id'),
        builder: (context, state) {
          final userId = state.pathParameters['id']!;

          return UserPage(userId: userId);
        },
      ),
    ],
  ),
];
