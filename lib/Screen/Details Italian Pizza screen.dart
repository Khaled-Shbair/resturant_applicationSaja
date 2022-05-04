import 'package:flutter/material.dart';

import '../Widget/Orders.dart';

class DetailsItalianPizzaScreen extends StatefulWidget {
  const DetailsItalianPizzaScreen({Key? key}) : super(key: key);

  @override
  State<DetailsItalianPizzaScreen> createState() =>
      _DetailsItalianPizzaScreenState();
}

class _DetailsItalianPizzaScreenState extends State<DetailsItalianPizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return Orders(
      image: 'images/italian pizza big.png',
      mealName: 'Italian Pizza',
      details:
          'consisting of a usually round, flattened\nbase of leavened wheat-based dough\ntopped with tomatoes, cheese, and often\nvarious other ingredients (such as\nanchovies, mushrooms, onions, olives,\npineapple, meat, etc.), which is then\nbaked at a high',
      price: '\$5',
      function: () {},
    );
  }
}
