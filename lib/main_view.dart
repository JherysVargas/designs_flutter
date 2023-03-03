import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desings flutter apps'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildButton(
              context: context,
              route: '/sklepEcommerce',
              text: 'Skelp Ecommerce',
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required String route,
    required BuildContext context,
  }) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).pushNamed(route),
      child: Text(text),
    );
  }
}
