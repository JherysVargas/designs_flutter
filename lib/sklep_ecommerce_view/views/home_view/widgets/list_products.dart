import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';
import 'package:designs_flutter/sklep_ecommerce_view/views/home_view/widgets/item_product.dart';

const List<ProductModel> products = [
  ProductModel(
    name: 'Dunk Hi Retro',
    price: 120.0,
    priceCrypto: 0.05,
    image:
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1652880390-zoomx-vaporfly-next-2-zapatillas-de-competicion-asfalto-VpLCt8.png?crop=1.00xw:0.533xh;0,0.327xh&resize=480%3A%2A',
  ),
  ProductModel(
    name: 'Nike Air Max One',
    price: 130.0,
    priceCrypto: 0.06,
    image:
        'https://cdn.shopify.com/s/files/1/0022/0587/6335/products/Fleece-Hoodie-front-web.png?v=1672770394&width=360',
  ),
  ProductModel(
    name: 'Jordan Hoodie',
    price: 140.0,
    priceCrypto: 0.07,
    image:
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1652880390-zoomx-vaporfly-next-2-zapatillas-de-competicion-asfalto-VpLCt8.png?crop=1.00xw:0.533xh;0,0.327xh&resize=480%3A%2A',
  ),
  ProductModel(
    name: 'Air Jordan Elevate',
    price: 150.0,
    priceCrypto: 0.08,
    image:
        'https://cdn.shopify.com/s/files/1/0022/0587/6335/products/Fleece-Hoodie-front-web.png?v=1672770394&width=360',
  ),
];

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .38,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            itemCount: (products.length + 1),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext _, int __) {
              return const SizedBox(width: 20);
            },
            separatorBuilder: (BuildContext _, int index) {
              final ProductModel product = products[index];
              return ItemProduct(
                product: product.copyWith(
                  heroTag: "${product.name}-${hashCode + index}",
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
