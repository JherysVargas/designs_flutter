import 'package:designs_flutter/banking_view/views/home_view/widgets/stacked_cards.dart';
import 'package:flutter/material.dart';

class BankingHome extends StatelessWidget {
  const BankingHome({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: _buildTitle(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: height / 3,
              child: const StackedCards(),
            ),
            const Placeholder(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const ListTile(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
      ),
      contentPadding: EdgeInsets.zero,
      title: Text('Hi Jherys Vargas'),
      subtitle: Text('Welcome back'),
      trailing: CircleAvatar(
        radius: 16,
        backgroundImage: NetworkImage(
          'https://avatars.githubusercontent.com/u/39938693?v=4',
        ),
      ),
    );
  }
}
