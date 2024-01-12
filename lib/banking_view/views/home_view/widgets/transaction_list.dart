import 'package:designs_flutter/banking_view/contstant.dart';
import 'package:designs_flutter/banking_view/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.paddingOf(context).bottom;

    return SliverPadding(
      padding: EdgeInsets.fromLTRB(16, 30, 16, paddingBottom),
      sliver: SliverMainAxisGroup(
        slivers: [
          _buildHeader(),
          SliverList.builder(
            itemCount: transactionList.length,
            itemBuilder: (_, index) {
              final TransactionModel transaction = transactionList[index];

              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: _buildImage(transaction.color, transaction.icon),
                title: _buildTitle(transaction.title),
                subtitle: _buildDate(transaction.date),
                trailing: _buildValue(transaction.value),
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const SliverPadding(
      padding: EdgeInsets.only(bottom: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transactions',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF4ec7fe),
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImage(Color color, IconData icon) {
    return CircleAvatar(
      backgroundColor: color.withOpacity(.15),
      radius: 24,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildDate(String date) {
    return Text(
      Jiffy.parse(date).format(pattern: 'dd MMM yyyy'),
      style: const TextStyle(
        fontSize: 11,
        color: Colors.grey,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildValue(num value) {
    return Text(
      '-\$$value',
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
