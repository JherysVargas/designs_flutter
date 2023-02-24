import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/category_model.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/custom_button.dart';

const List<CategoryModel> categories = [
  CategoryModel(
    name: 'Sneakers',
    image:
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1652880390-zoomx-vaporfly-next-2-zapatillas-de-competicion-asfalto-VpLCt8.png?crop=1.00xw:0.533xh;0,0.327xh&resize=480%3A%2A',
  ),
  CategoryModel(
    name: 'Apparel',
    image:
        'https://cdn.shopify.com/s/files/1/0022/0587/6335/products/Fleece-Hoodie-front-web.png?v=1672770394&width=360',
  ),
  CategoryModel(
    name: 'Sneakers',
    image:
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1652880390-zoomx-vaporfly-next-2-zapatillas-de-competicion-asfalto-VpLCt8.png?crop=1.00xw:0.533xh;0,0.327xh&resize=480%3A%2A',
  ),
  CategoryModel(
    name: 'Sneakers',
    image:
        'https://cdn.shopify.com/s/files/1/0022/0587/6335/products/Fleece-Hoodie-front-web.png?v=1672770394&width=360',
  ),
];

class ListCategories extends StatefulWidget {
  const ListCategories({super.key});

  @override
  State<ListCategories> createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: SizedBox(
        height: 90,
        child: ListView.separated(
          itemCount: categories.length,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext _, int __) {
            return const SizedBox(width: 20);
          },
          itemBuilder: (BuildContext _, int index) {
            final CategoryModel category = categories[index];
            return CustomButton(
              radius: 25,
              text: category.name,
              backgroundColorLeading: Colors.grey[200],
              leading: Image.network(
                category.image,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            );
          },
        ),
      ),
    );
  }
}
