import 'package:flutter/material.dart';

import 'router/router.dart';

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterBankingAppGenerator.generateRoute,
    );
  }
}
