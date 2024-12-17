import 'package:flutter/material.dart';
import 'package:hacker_news/core/extensions/context_extensions.dart';
import 'package:hacker_news/features/stories/presentation/stories_page/widgets/stories_list_view.dart';
import 'package:hacker_news/shared/widgets/app_sliver_app_bar/app_sliver_app_bar.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppSliverAppBar(title: 'Hacker News', showBackButton: false),
          const StoriesListView(),
          SliverToBoxAdapter(child: SizedBox(height: context.bottomViewPadding)),
        ],
      ),
    );
  }
}
