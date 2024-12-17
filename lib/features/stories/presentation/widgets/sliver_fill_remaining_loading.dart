import 'package:flutter/material.dart';

class SliverFillRemainingLoading extends StatelessWidget {
  const SliverFillRemainingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
