import 'package:flutter/material.dart';
import 'package:designs_flutter/banking_view/contstant.dart';
import 'package:designs_flutter/banking_view/models/action.dart';

class ActionsList extends StatelessWidget {
  const ActionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            actionsList.length,
            (index) {
              final option = actionsList[index];

              return _buildOption(option);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildOption(ActionModel option) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: option.color.withOpacity(.15),
            child: Icon(
              option.icon,
              color: option.color,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            option.name,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black45,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
