import 'package:flutter/material.dart';

class SectionSkuProduct extends StatelessWidget {
  const SectionSkuProduct({super.key});

  static const TextStyle _textStyle = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Product SKU: $hashCode",
      maxLines: 2,
      style: _textStyle,
    );
  }
}
