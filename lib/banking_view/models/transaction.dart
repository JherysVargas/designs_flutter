import 'package:flutter/material.dart';

class TransactionModel {
  final Color color;
  final IconData icon;
  final String title;
  final num value;
  final String date;

  const TransactionModel({
    required this.color,
    required this.icon,
    required this.title,
    required this.value,
    required this.date,
  });
}
