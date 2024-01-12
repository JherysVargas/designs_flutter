import 'package:designs_flutter/banking_view/contstant.dart';
import 'package:designs_flutter/banking_view/widgets/credit_card.dart';
import 'package:flutter/material.dart';

class DetailCards extends StatelessWidget {
  const DetailCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(surfaceTintColor: Colors.white),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: spacing),
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        itemCount: creditCards.length,
        reverse: true,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Hero(
            tag: 'card$index',
            child: CreditCard(creditCard: creditCards[index]),
          );
        },
      ),
    );
  }
}
