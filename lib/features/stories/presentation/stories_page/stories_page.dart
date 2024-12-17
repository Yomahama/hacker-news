import 'package:flutter/material.dart';
import 'package:hacker_news/features/stories/presentation/stories_page/widgets/stories_list_view.dart';
import 'package:hacker_news/shared/widgets/app_sliver_app_bar/app_sliver_app_bar.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          AppSliverAppBar(title: 'Hacker News', showBackButton: false),
          StoriesListView(),
        ],
      ),
    );
  }
}
