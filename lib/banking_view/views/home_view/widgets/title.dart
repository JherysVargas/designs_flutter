import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 6),
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
