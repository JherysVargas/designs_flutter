import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/hero_card.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';

import 'info_product.dart';
import 'preview_images.dart';
import 'container_image_product.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/detailProductsklepEcommerce',
          arguments: {"product": product},
        );
      },
      child: Stack(
        children: [
          HeroCard(
            heroTag: product.heroTag!,
            width: MediaQuery.of(context).size.width * .6,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .6,
            padding: const EdgeInsets.all(6),
            child: LayoutBuilder(
              builder: (BuildContext _, BoxConstraints constraints) {
                return Stack(
                  alignment: Alignment.centerRight,
                  fit: StackFit.loose,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContainerImageProduct(
                          product: product,
                          heroTag: "${product.heroTag}-image",
                        ),
                        InfoProduct(product: product),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      bottom: constraints.maxHeight * .33,
                      child: PreviewImage(product: product),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
