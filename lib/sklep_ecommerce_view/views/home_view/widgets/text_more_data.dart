import 'package:flutter/material.dart';

class TextMoreData extends AnimatedWidget {
  const TextMoreData({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedOpacity(
      duration: kThemeAnimationDuration,
      opacity: (1 - (_progress.value * 10)).clamp(0, 1),
      curve: Curves.easeOut,
      sliver: const SliverPadding(
        padding: EdgeInsets.fromLTRB(16, 30, 16, 16),
        sliver: SliverToBoxAdapter(
          child: Text(
            'Explore\nMore',
            style: TextStyle(
              color: Colors.white,
              fontSize: 46,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
