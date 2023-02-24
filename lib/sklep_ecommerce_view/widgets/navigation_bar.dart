import 'package:flutter/material.dart';

const List<IconData> pages = [
  Icons.shopping_bag_outlined,
  Icons.home_filled,
  Icons.favorite_border_outlined,
  Icons.person_outlined
];

class BottomNavigation extends StatelessWidget {
  final int? currentPage;
  final void Function(int)? onChangeTab;

  const BottomNavigation({
    Key? key,
    this.onChangeTab,
    this.currentPage = 0,
  }) : super(key: key);

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
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: index == currentPage
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
          pages[index],
          color: index == currentPage ? Colors.white : Colors.grey[350],
        ),
      ),
    );
  }
}
