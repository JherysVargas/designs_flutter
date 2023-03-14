import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';
import 'package:designs_flutter/sklep_ecommerce_view/views/detail_product_view/detail_product_store.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final ProductModel product = args['product'];

    return Hero(
      tag: "${product.heroTag}-image",
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Image.network(
          product.image,
          height: sizeImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
