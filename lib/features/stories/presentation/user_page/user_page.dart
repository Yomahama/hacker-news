import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hacker_news/core/extensions/context_extensions.dart';
import 'package:hacker_news/core/extensions/datetime_extensions.dart';
import 'package:hacker_news/features/stories/presentation/user_page/widgets/user_stories_list_view.dart';
import 'package:hacker_news/features/stories/presentation/widgets/sliver_fill_remaining_loading.dart';
import 'package:hacker_news/features/stories/state/hacker_news_user_notifier.dart';
import 'package:hacker_news/shared/widgets/app_sliver_app_bar/app_sliver_app_bar.dart';

class UserPage extends StatelessWidget {
  final String userId;
  const UserPage({required this.userId, super.key});

  static String route(String userId) => '/users/$userId';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppSliverAppBar(title: userId),
          _AboutSectionView(userId: userId),
          UserStoriesListView(userId: userId),
          SliverToBoxAdapter(child: SizedBox(height: context.bottomViewPadding)),
        ],
      ),
    );
  }
}

class _AboutSectionView extends ConsumerWidget {
  final String userId;
  const _AboutSectionView({required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(hackerNewsUserNotifierProvider(userId));

    return userState.maybeWhen(
      data: (user) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Member since: ${user.created.yyyyMMMdd}', style: Theme.of(context).textTheme.labelSmall),
                const SizedBox(height: 20),
                Text(
                  'About',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                user.about == null ? Text('$userId has not provided any information.') : HtmlWidget(user.about!),
                const SizedBox(height: 30),
                Text('Stories', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
      orElse: () => const SliverFillRemainingLoading(),
    );
  }
}
