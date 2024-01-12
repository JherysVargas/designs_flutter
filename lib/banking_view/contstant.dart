import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'models/credit_card.dart';
import 'models/action.dart';
import 'models/transaction.dart';

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

const List<ActionModel> actionsList = [
  ActionModel(
    color: Color(0xFF6dd094),
    icon: Icons.swap_vert_rounded,
    name: 'Transfer',
  ),
  ActionModel(
    color: Color(0xFFf59d52),
    icon: Icons.percent_rounded,
    name: 'Voucher',
  ),
  ActionModel(
    color: Color(0xFFe3a5fc),
    icon: Icons.feed_rounded,
    name: 'Bill',
  ),
  ActionModel(
    color: Color(0xFF58ccf0),
    icon: Icons.groups_rounded,
    name: 'Send',
  ),
  ActionModel(
    color: Color(0xFFf08876),
    icon: Icons.shopping_cart_rounded,
    name: 'Shopping',
  ),
];

const List<TransactionModel> transactionList = [
  TransactionModel(
    color: Color(0xFF6dd094),
    icon: MaterialCommunityIcons.shoe_sneaker,
    title: 'Nike Airmax',
    value: 260.80,
    date: '2024-01-11 17:40:13.545910',
  ),
  TransactionModel(
    color: Color(0xFFf59d52),
    icon: MaterialCommunityIcons.hanger,
    title: 'Clothing Store',
    value: 126.50,
    date: '2024-01-11 17:40:13.545910',
  ),
  TransactionModel(
    color: Color(0xFFe3a5fc),
    icon: Icons.local_grocery_store_rounded,
    title: 'Grocery Shop',
    value: 108.40,
    date: '2024-01-11 17:40:13.545910',
  ),
  TransactionModel(
    color: Color(0xFF58ccf0),
    icon: Icons.sports_basketball_rounded,
    title: 'Dribble Pro',
    value: 60.00,
    date: '2024-01-11 17:40:13.545910',
  ),
  TransactionModel(
    color: Color(0xFFf08876),
    icon: Icons.laptop_mac_rounded,
    title: 'Mobile Course',
    value: 300.00,
    date: '2024-01-11 17:40:13.545910',
  ),
];
