import 'dart:ui';

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

class _SklepEcommerceHomeState extends State<SklepEcommerceHome>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 400),
  );

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    _controller.value =
        _scrollController.offset / _scrollController.position.maxScrollExtent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext _, Widget? __) {
          return BackgroundGradient(
            stops: [.1, .22, lerpDouble(.6, .2, _controller.value)!],
            colors: const [
              Color.fromARGB(255, 196, 94, 254),
              Color.fromARGB(255, 210, 134, 255),
              Color.fromARGB(255, 246, 246, 246)
            ],
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                AppBarSklep(controller: _controller),
                TextMoreData(controller: _controller),
                ListCategories(controller: _controller),
                const ListProducts(),
                const TopSales(),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
