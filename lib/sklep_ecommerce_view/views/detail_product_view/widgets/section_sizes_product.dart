import 'dart:math';
import 'package:flutter/material.dart';

const int indexSelected = 2;

class SectionSizeProduct extends StatelessWidget {
  const SectionSizeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        const SizedBox(height: 10),
        _buildItems(),
      ],
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Sizes',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    );
  }

  Widget _buildItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        5,
        (index) {
          final bool isSelected = index == indexSelected;
          final double radius = isSelected ? 36 : 30;
          final Color colorBorder =
              isSelected ? Colors.white : Colors.grey[300]!;
          final Color colorText = isSelected ? Colors.white : Colors.black;
          return Container(
            alignment: Alignment.center,
            height: Size.fromRadius(radius).height,
            width: Size.fromRadius(radius).width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: colorBorder),
              gradient: !isSelected
                  ? null
                  : const RadialGradient(
                      radius: .9,
                      colors: [
                        Color.fromARGB(255, 251, 94, 132),
                        Color.fromARGB(255, 254, 205, 215)
                      ],
                    ),
            ),
            child: Text(
              "${Random().nextInt(10) * index}",
              style: TextStyle(
                fontSize: 18,
                color: colorText,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}
