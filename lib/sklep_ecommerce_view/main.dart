import 'package:flutter/material.dart';

import 'router/router.dart';

class SklepEcommerceApp extends StatelessWidget {
  const SklepEcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sklep Ecommerce App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterSklepEcommerceAppGenerator.generateRoute,
    );
  }
}
