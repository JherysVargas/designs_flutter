import 'package:designs_flutter/sklep_ecommerce_view/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/hero_card.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/background_gradient.dart';

import 'detail_product_store.dart';
import 'widgets/app_bar.dart';
import 'widgets/section_info_product.dart';
import 'widgets/section_preview_images.dart';

class DetailProductSklepEcommerceHome extends StatelessWidget {
  const DetailProductSklepEcommerceHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final ProductModel product = args['product'];

    final EdgeInsets padding = MediaQuery.of(context).padding;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const AppBarDetailProduct(),
      ),
      body: BackgroundGradient(
        stops: const [.1, .3],
        colors: const [
          Color.fromARGB(255, 251, 94, 132),
          Color.fromARGB(255, 254, 205, 215)
        ],
        child: Padding(
          padding: EdgeInsets.only(top: padding.top + kTextTabBarHeight + 30),
          child: Stack(
            fit: StackFit.expand,
            children: [
              HeroCard(heroTag: product.heroTag!),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: paddingContainerInfo,
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.zero,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: const [
                      SectionInfoProduct(),
                      SectionPreviewImage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const GenericButton(label: 'Add to bag'),
    );
  }
}
