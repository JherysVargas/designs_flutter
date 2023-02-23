import 'package:flutter/material.dart';
import 'package:designs_flutter/main_view.dart';
import 'package:designs_flutter/sklep_ecommerce_view/views/home_view/home.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routesMap = {
      '/': MaterialPageRoute(
        builder: (_) => const MainView(),
      ),
      '/sklepEcommerce': MaterialPageRoute(
        builder: (_) => const SklepEcommerceHome(),
      ),
    };

    return routesMap[settings.name!] ?? routesMap['/']!;
  }
}
