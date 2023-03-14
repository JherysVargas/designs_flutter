import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/product_model.dart';
import 'package:designs_flutter/sklep_ecommerce_view/views/detail_product_view/detail_product_store.dart';

class SectionPreviewImage extends StatefulWidget {
  const SectionPreviewImage({super.key});

  @override
  State<SectionPreviewImage> createState() => _SectionPreviewImageState();
}

class _SectionPreviewImageState extends State<SectionPreviewImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 900),
    vsync: this,
  );

  final List<Animation<double>> animations = [];

  @override
  void initState() {
    super.initState();
    _handleAnimations();
    Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.forward(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleAnimations() {
    for (var i = 0; i < quantityItems; i++) {
      animations.add(
        Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(
              (i * 1) / quantityItems,
              ((i + 1) * 1) / quantityItems,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final ProductModel product = args['product'];

    return Positioned(
      top: sizeImage - (paddingContainerInfo * 2.5),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext _, Widget? child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              quantityItems,
              (index) => ScaleTransition(
                scale: animations[index],
                child: child,
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 3,
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
            radius: 25,
            backgroundColor: Colors.grey[100],
            backgroundImage: NetworkImage(product.image),
          ),
        ),
      ),
    );
  }
}
