import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';
import 'package:flutter/material.dart';

const List<ProductModel> products = [
  ProductModel(
    name: 'Sneakers',
    price: 0.0,
    image:
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1652880390-zoomx-vaporfly-next-2-zapatillas-de-competicion-asfalto-VpLCt8.png?crop=1.00xw:0.533xh;0,0.327xh&resize=480%3A%2A',
  ),
  ProductModel(
    name: 'Apparel',
    price: 0.0,
    image:
        'https://cdn.shopify.com/s/files/1/0022/0587/6335/products/Fleece-Hoodie-front-web.png?v=1672770394&width=360',
  ),
  ProductModel(
    name: 'Sneakers',
    price: 0.0,
    image:
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1652880390-zoomx-vaporfly-next-2-zapatillas-de-competicion-asfalto-VpLCt8.png?crop=1.00xw:0.533xh;0,0.327xh&resize=480%3A%2A',
  ),
  ProductModel(
    name: 'Sneakers',
    price: 0.0,
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
          height: 260,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext _, int __) {
              return const SizedBox(width: 20);
            },
            separatorBuilder: (BuildContext _, int index) {
              return Container(
                width: 260,
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
                alignment: Alignment.center,
                child: Text('Hola'),
              );
            },
          ),
        ),
      ),
    );
  }
}
