import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'list_products.dart';

class TopSales extends StatelessWidget {
  const TopSales({super.key});

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.of(context).padding.bottom;
    return MultiSliver(
      children: [
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Top Sales',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(bottom: paddingBottom),
          sliver: const ListProducts(),
        ),
      ],
    );
  }
}
