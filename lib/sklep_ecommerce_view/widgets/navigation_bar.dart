import 'package:flutter/material.dart';
import 'package:designs_flutter/sklep_ecommerce_view/models/item_bottom_bar_model.dart';

const List<ItemBottomBarModel> pages = [
  ItemBottomBarModel(
    iconFilled: Icons.shopping_bag,
    iconOutline: Icons.shopping_bag_outlined,
  ),
  ItemBottomBarModel(
    iconFilled: Icons.home_rounded,
    iconOutline: Icons.home_outlined,
  ),
  ItemBottomBarModel(
    iconFilled: Icons.favorite_rounded,
    iconOutline: Icons.favorite_outline_rounded,
  ),
  ItemBottomBarModel(
    iconFilled: Icons.person,
    iconOutline: Icons.person_outlined,
  ),
];

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final ValueNotifier<int> currentPage = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        height: (kBottomNavigationBarHeight + 10),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              offset: const Offset(0, 3),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            pages.length,
            (index) => _buildItem(index),
          ),
        ),
      ),
    );
  }

  Widget _buildItem(int index) {
    return ValueListenableBuilder<int>(
      valueListenable: currentPage,
      builder: (BuildContext _, int value, Widget? __) {
        final bool isSelected = (index == value);

        return InkWell(
          onTap: () {
            currentPage.value = index;
          },
          child: AnimatedContainer(
            duration: kThemeAnimationDuration,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: isSelected
                  ? const LinearGradient(
                      colors: [
                        Color(0xFFfe867a),
                        Color(0xFFfedb62),
                      ],
                    )
                  : null,
            ),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.transparent,
              child: Icon(
                isSelected ? pages[index].iconFilled : pages[index].iconOutline,
                color: isSelected ? Colors.white : Colors.grey[350],
              ),
            ),
          ),
        );
      },
    );
  }
}
