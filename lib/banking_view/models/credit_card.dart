import 'package:flutter/material.dart';

class CreditCardModel {
  final List<Color> gradient;
  final String image;
  final String total;
  final String numberCard;

  const CreditCardModel({
    required this.gradient,
    required this.image,
    required this.total,
    required this.numberCard,
  });
}
