import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/background_gradient.dart';

import 'widgets/list_categories.dart';
import 'widgets/list_products.dart';
import 'widgets/text_more_data.dart';

class SklepEcommerceHome extends StatelessWidget {
  const SklepEcommerceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundGradient(
        stops: [.1, .25, .6],
        colors: [
          Color.fromARGB(255, 196, 94, 254),
          Color.fromARGB(255, 210, 134, 255),
          Color.fromARGB(255, 255, 255, 255)
        ],
        child: CustomScrollView(
          slivers: [
            AppBarSklep(),
            TextMoreData(),
            ListCategories(),
            ListProducts(),
            SliverToBoxAdapter(
              child: SizedBox(height: 1700),
            )
          ],
        ),
      ),
    );
  }
}
