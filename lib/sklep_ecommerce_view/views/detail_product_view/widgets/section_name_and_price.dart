import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';

class SectionNameAndPrice extends StatelessWidget {
  const SectionNameAndPrice({super.key});

  static const TextStyle _textStyle = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _textStylePriceCrypto = TextStyle(
    fontSize: 18,
    color: Colors.orange,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _textStylePrice = TextStyle(
    fontSize: 15,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final ProductModel product = args['product'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildName(product),
        _buildPrice(product),
      ],
    );
  }

  Widget _buildName(ProductModel product) {
    return Flexible(
      child: Text(
        product.name,
        maxLines: 2,
        style: _textStyle,
      ),
    );
  }

  Widget _buildPrice(ProductModel product) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${product.price} ETH",
            style: _textStylePriceCrypto,
          ),
          Text(
            "\$${product.price}",
            style: _textStylePrice,
          )
        ],
      ),
    );
  }
}
