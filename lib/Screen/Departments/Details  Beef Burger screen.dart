import 'package:flutter/material.dart';

import '../../Widget/Orders.dart';

class DetailsBeefBurgerScreen extends StatefulWidget {
  const DetailsBeefBurgerScreen({Key? key}) : super(key: key);

  @override
  State<DetailsBeefBurgerScreen> createState() =>
      _DetailsBeefBurgerScreenState();
}

class _DetailsBeefBurgerScreenState extends State<DetailsBeefBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return Orders(
      image: 'images/beef burger big.png',
      mealName: 'Beef Burger',
      details:
          '1 small onion, diced.\n500g good-quality beef mince.\n1 egg.\n1  vegetable oil.\n4 burger buns.\nAll or any of the following to serve:\nsliced tomato.',
      price: '\$10',
      function: () {
        Navigator.pushNamed(context, '/OrderBeefBurgerScreen');
      },
    );
  }
}
