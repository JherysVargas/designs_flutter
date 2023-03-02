import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';

class ContainerImageProduct extends StatelessWidget {
  const ContainerImageProduct({
    super.key,
    required this.product,
    required this.heroTag,
  });

  final String heroTag;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Hero(
        tag: heroTag,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Image.network(
            product.image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
