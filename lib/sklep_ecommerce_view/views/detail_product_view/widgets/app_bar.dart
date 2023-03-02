import 'package:designs_flutter/sklep_ecommerce_view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AppBarDetailProduct extends StatelessWidget {
  const AppBarDetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          onTap: () => Navigator.of(context).pop(),
          avatar: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          text: 'Details',
          backgroundColorAvatar: Colors.grey[200],
        ),
        const Text(
          'Sklep',
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
