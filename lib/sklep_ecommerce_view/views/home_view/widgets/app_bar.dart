import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/custom_button.dart';

class AppBarSklep extends StatelessWidget {
  const AppBarSklep({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Sklep',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          CustomButton(
            text: '6.24 ',
            richText: 'ETH',
          ),
        ],
      ),
      pinned: true,
    );
  }
}
