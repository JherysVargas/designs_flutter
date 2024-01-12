import 'package:designs_flutter/banking_view/views/detail_cards/detail.dart';
import 'package:designs_flutter/banking_view/views/home_view/home.dart';
import 'package:flutter/material.dart';

class RouterBankingAppGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routesMap = {
      '/': MaterialPageRoute(
        builder: (_) => const BankingHome(),
      ),
      '/detailCardBank': PageRouteBuilder(
        pageBuilder: (_, __, ___) => const DetailCards(),
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
