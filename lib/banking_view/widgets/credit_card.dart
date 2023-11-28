import 'package:designs_flutter/banking_view/models/credit_card.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key, required this.creditCard});

  final CreditCardModel creditCard;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Material(
      child: Container(
        height: height / 4,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: creditCard.gradient,
            stops: const [0.1, 0.5, 0.9],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: creditCard.gradient.first.withOpacity(.4),
              blurRadius: 14,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_buildImage(), _buildContent()],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image(
      image: NetworkImage(creditCard.image),
      height: 40,
      width: 40,
    );
  }

  Widget _buildContent() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildTextTotal(),
          _buildTotalAndNumber(),
        ],
      ),
    );
  }

  Widget _buildTextTotal() {
    return const Text(
      'Total balance',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white70,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildTotalAndNumber() {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      textColor: Colors.white,
      title: Text(
        '\$${creditCard.total}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
      ),
      trailing: Text(
        creditCard.numberCard,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
