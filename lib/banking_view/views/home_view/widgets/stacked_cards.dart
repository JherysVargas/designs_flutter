import 'dart:math';

import 'package:designs_flutter/banking_view/contstant.dart';
import 'package:designs_flutter/banking_view/widgets/credit_card.dart';
import 'package:flutter/material.dart';

class StackedCards extends StatelessWidget {
  const StackedCards({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: height / 3,
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/detailCardBank'),
            child: Stack(
              children: List.generate(
                min(3, creditCards.length),
                (index) {
                  final symmetricCenterPercentage = spacing * (3 - (index + 1));

                  return Positioned(
                    top: spacing * index,
                    left: symmetricCenterPercentage,
                    right: symmetricCenterPercentage,
                    child: Hero(
                      tag: 'card$index',
                      child: CreditCard(creditCard: creditCards[index]),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
