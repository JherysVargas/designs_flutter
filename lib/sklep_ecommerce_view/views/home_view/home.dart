import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/navigation_bar.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/background_gradient.dart';

import 'widgets/app_bar.dart';
import 'widgets/top_sales.dart';
import 'widgets/list_products.dart';
import 'widgets/text_more_data.dart';
import 'widgets/list_categories.dart';

class SklepEcommerceHome extends StatefulWidget {
  const SklepEcommerceHome({super.key});

  @override
  State<SklepEcommerceHome> createState() => _SklepEcommerceHomeState();
}

class _SklepEcommerceHomeState extends State<SklepEcommerceHome> {
  final ScrollController _controller = ScrollController();
  final ValueNotifier<double> opacity = ValueNotifier(1);

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    final double percentage =
        (_controller.position.maxScrollExtent - (_controller.offset * 10))
            .clamp(0, 1);

    opacity.value = percentage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BackgroundGradient(
        stops: const [.1, .25, .6],
        colors: const [
          Color.fromARGB(255, 196, 94, 254),
          Color.fromARGB(255, 210, 134, 255),
          Color.fromARGB(255, 246, 246, 246)
        ],
        child: CustomScrollView(
          controller: _controller,
          slivers: [
            const AppBarSklep(),
            ValueListenableBuilder<double>(
              valueListenable: opacity,
              builder: (_, value, __) {
                return TextMoreData(opacity: value);
              },
            ),
            const ListCategories(),
            const ListProducts(),
            const TopSales(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(currentPage: 1),
    );
  }
}
