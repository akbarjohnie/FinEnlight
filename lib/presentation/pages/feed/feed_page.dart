import 'package:auto_route/auto_route.dart';
import 'package:fin_enlight/core/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAdapter(
              padding: P(
                horizontal: 16,
                top: 16,
                bottom: 12,
              ),
              child: Row(),
            ),
          ],
        ),
      ),
    );
  }
}
