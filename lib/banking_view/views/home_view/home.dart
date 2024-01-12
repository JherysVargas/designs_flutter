import 'package:flutter/material.dart';

import 'widgets/stacked_cards.dart';
import 'widgets/title.dart';
import 'widgets/actions_list.dart';
import 'widgets/transaction_list.dart';
import 'widgets/user_list_send_money.dart';

class BankingHome extends StatelessWidget {
  const BankingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CustomTitle(),
        surfaceTintColor: Colors.white,
      ),
      body: const CustomScrollView(
        slivers: [
          StackedCards(),
          ActionsList(),
          UserListSendMoney(),
          TransactionList(),
        ],
      ),
    );
  }
}
