import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';
import 'package:flutter/material.dart';

class PreviewImage extends StatelessWidget {
  const PreviewImage({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Container(
          margin: const EdgeInsets.only(left: 3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.09),
                offset: const Offset(0, 3),
                blurRadius: 4,
              ),
            ],
          ),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            backgroundImage: NetworkImage(product.image),
          ),
        ),
      ),
    );
  }
}
