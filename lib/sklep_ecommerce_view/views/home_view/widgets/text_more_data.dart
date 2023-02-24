import 'package:flutter/material.dart';

class TextMoreData extends StatelessWidget {
  const TextMoreData({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.fromLTRB(16, 30, 16, 16),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Explore\nMore',
          style: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
