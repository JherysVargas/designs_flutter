import 'package:flutter/material.dart';
import 'package:designs_flutter/main_view.dart';
import 'package:designs_flutter/sklep_ecommerce_view/views/home_view/home.dart';
import 'package:designs_flutter/sklep_ecommerce_view/views/detail_product_view/detail_product.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routesMap = {
      '/': MaterialPageRoute(
        builder: (_) => const MainView(),
      ),
      '/sklepEcommerce': MaterialPageRoute(
        builder: (_) => const SklepEcommerceHome(),
      ),
      '/detailProductsklepEcommerce': PageRouteBuilder(
        pageBuilder: (_, __, ___) => const DetailProductSklepEcommerceHome(),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 350),
        settings: settings,
      ),
    };

    return routesMap[settings.name!] ?? routesMap['/']!;
  }
}
