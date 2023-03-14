import 'package:flutter/material.dart';

import 'section_description_product.dart';
import 'section_image.dart';
import 'section_sizes_product.dart';
import 'section_sku_product.dart';
import 'section_name_and_price.dart';

class SectionInfoProduct extends StatelessWidget {
  const SectionInfoProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.of(context).padding.bottom;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildContainerImage(),
        const SizedBox(height: 60),
        _buildContainerInfo(paddingBottom),
      ],
    );
  }

  Widget _buildContainerImage() {
    return const ContainerImage();
  }

  Widget _buildContainerInfo(double paddingBottom) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 0, 4, paddingBottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SectionNameAndPrice(),
          SizedBox(height: 6),
          SectionSkuProduct(),
          SizedBox(height: 30),
          SectionSizeProduct(),
          SizedBox(height: 20),
          SectionDescriptionProduct(),
        ],
      ),
    );
  }
}
