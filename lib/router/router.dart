import 'package:designs_flutter/banking_view/main.dart';
import 'package:designs_flutter/sklep_ecommerce_view/main.dart';
import 'package:flutter/material.dart';
import 'package:designs_flutter/main_view.dart';

class RouterGeneralAppGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routesMap = {
      '/': MaterialPageRoute(
        builder: (_) => const MainView(),
      ),
      '/sklepEcommerce': MaterialPageRoute(
        builder: (_) => const SklepEcommerceApp(),
      ),
      '/banking': MaterialPageRoute(
        builder: (_) => const BankingApp(),
      ),
    };

    return routesMap[settings.name!] ?? routesMap['/']!;
  }
}
