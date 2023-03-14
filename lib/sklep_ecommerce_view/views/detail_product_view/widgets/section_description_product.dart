import 'package:flutter/material.dart';

class SectionDescriptionProduct extends StatelessWidget {
  const SectionDescriptionProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas iaculis porttitor nisl, suscipit placerat diam rhoncus sed. Suspendisse potenti. Nullam sodales libero ut dolor fermentum aliquet. Sed eu euismod nunc. Sed lorem ipsum, iaculis sed ligula sed, feugiat lacinia enim. Proin in sodales diam. Ut rhoncus nisl non turpis blandit tincidunt. Etiam arcu nibh, pharetra nec nisl vel, convallis interdum velit. Fusce nec ultricies augue, in sollicitudin ligula.',
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    );
  }
}
