import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  const GenericButton({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.of(context).padding.bottom;

    return Container(
      padding: EdgeInsets.fromLTRB(16, 20, 16, (paddingBottom + 5)),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [.6, .9, 1],
          colors: [
            Colors.white,
            Colors.white70,
            Colors.white30,
          ],
        ),
      ),
      child: Container(
        height: (kBottomNavigationBarHeight + 10),
        alignment: Alignment.center,
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
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 254, 132, 122),
              Color.fromARGB(255, 255, 207, 105)
            ],
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
