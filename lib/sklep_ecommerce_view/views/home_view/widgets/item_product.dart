import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';

import 'info_product.dart';
import 'preview_images.dart';
import 'container_image_product.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            offset: const Offset(0, 3),
            blurRadius: 4,
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (BuildContext _, BoxConstraints constraints) {
          return Stack(
            alignment: Alignment.centerRight,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerImageProduct(product: product),
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
    );
  }
}
