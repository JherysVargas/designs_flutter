import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/widgets/custom_button.dart';

class AppBarSklep extends AnimatedWidget {
  const AppBarSklep({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.lerp(
        const Color.fromARGB(0, 210, 134, 255),
        const Color.fromARGB(255, 196, 94, 254),
        _progress.value / .6,
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: kToolbarHeight + 20,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Sklep',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          CustomButton(
            text: '6.24 ',
            richText: 'ETH',
          ),
        ],
      ),
      pinned: true,
    );
  }
}
