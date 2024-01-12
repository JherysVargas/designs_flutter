import 'dart:math';

import 'package:designs_flutter/banking_view/contstant.dart';
import 'package:flutter/material.dart';

const double radiusUsers = 26;

class UserListSendMoney extends StatelessWidget {
  const UserListSendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFfd8eaf)),
          ),
          child: Column(
            children: [
              _buildTitle(),
              const SizedBox(height: 16),
              _buildListUsers(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Send Money',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Add new',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Widget _buildListUsers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        5,
        (index) {
          final int numberRandom = Random().nextInt(actionsList.length);

          final Color colorRandom = actionsList[numberRandom].color;

          return CircleAvatar(
            radius: radiusUsers,
            backgroundColor: colorRandom.withOpacity(.4),
            child: const Icon(
              Icons.person,
              size: 28,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
