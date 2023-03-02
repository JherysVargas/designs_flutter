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

  late final Animation<double> animationColor = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  late final Animation<double> animationOpacity = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
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
    final double offset = (_scrollController.offset / .5);
    final double percentage =
        (offset / _scrollController.position.maxScrollExtent).clamp(0, 1);

    _controller.value = percentage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext _, Widget? __) {
          return BackgroundGradient(
            stops: [.1, .22, lerpDouble(.6, .2, animationColor.value)!],
            colors: const [
              Color.fromARGB(255, 196, 94, 254),
              Color.fromARGB(255, 210, 134, 255),
              Color.fromARGB(255, 246, 246, 246)
            ],
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                AppBarSklep(animation: animationColor),
                TextMoreData(
                  opacity: (1 - (animationOpacity.value * 10)).clamp(0, 1),
                ),
                ListCategories(animation: animationColor),
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
