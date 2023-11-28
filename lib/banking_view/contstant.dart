import 'package:flutter/material.dart';

import 'models/credit_card.dart';

const double spacing = 16.0;
const double factorCard = 4;

const List<CreditCardModel> creditCards = [
  CreditCardModel(
    gradient: [
      Color(0xFFfd8eaf),
      Color(0xFFfea4be),
      Color(0xFFfdb8ce),
    ],
    image:
        'https://static.rankt.com/v1/public/static/images/issuers/_inverted/american_express_white.png',
    total: '1,234',
    numberCard: '**** **** **** 1234',
  ),
  CreditCardModel(
    gradient: [
      Color(0xFF3b3a3d),
      Color(0xFF4e4e51),
      Color(0xFF7e7e80),
    ],
    image:
        'https://static-00.iconduck.com/assets.00/mastercard-icon-512x395-qoejqj7z.png',
    total: '2,345',
    numberCard: '**** **** **** 2345',
  ),
  CreditCardModel(
    gradient: [
      Color(0xFF5978fc),
      Color(0xFF2b87fe),
      Color(0xFF4ec7fe),
    ],
    image:
        'https://i0.wp.com/americassbdc.org/wp-content/uploads/2021/05/Visa-logo-white.png?fit=900%2C291&ssl=1',
    total: '3,456',
    numberCard: '**** **** **** 3456',
  ),
];
